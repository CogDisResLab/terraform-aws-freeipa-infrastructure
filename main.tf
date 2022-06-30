locals {
  replicas = length(var.subnets)
}

resource "aws_instance" "idp_host" {
  count                  = local.replicas
  ami                    = var.instance_ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnets[count.index]
  key_name               = var.key_name
  vpc_security_group_ids = concat(module.idp_sg.idp_client_security_group_id, module.idp_sg.idp_server_security_group_id, var.additional_server_sg)
  ebs_optimized          = true
  monitoring             = true

  root_block_device {
    volume_size = 20
    encrypted   = true
    volume_type = "gp3"
    tags = {
      Name = "IDP-Root-Volume"
    }
  }
  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  tags = {
    Name = "IDP Host"
  }
}

module "idp_instance_recordset" {
  count   = local.replicas
  source  = "CogDisResLab/route53-instance-recordset/aws"
  version = "0.2.0"

  instance     = aws_instance.idp_host[count.index]
  private_zone = var.private_zone
  reverse_zone = var.reverse_zone
  domain_name  = "idp${count.index}.cdrlprojects.org"
}

module "freeipa_dns_recordset" {
  source  = "CogDisResLab/route53-freeipa-recordset/aws"
  version = "1.0.2"


  base_domain  = var.base_domain
  subdomain    = var.subdomain
  private_zone = var.private_zone
  public_zone  = var.public_zone

}

module "idp_sg" {
  source = "./modules/idp_sg"

  main_vpc = var.main_vpc
}
