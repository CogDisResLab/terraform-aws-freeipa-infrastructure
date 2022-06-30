resource "aws_security_group" "idp_server_sg" {
  # checkov:skip=CKV2_AWS_5: This is part of a module so the responsibility for the user
  name        = "idp_server_sg"
  description = "A VPC Security Group for the IDP server for accessibility"
  vpc_id      = var.main_vpc

  tags = {
    Name = "IDP Server Access Security Group"
  }
}

resource "aws_security_group" "idp_client_sg" {
  # checkov:skip=CKV2_AWS_5: This is part of a module so the responsibility for the user
  name        = "idp_client_sg"
  description = "A VPC Security Group for the IDP server for accessibility"
  vpc_id      = var.main_vpc

  tags = {
    Name = "IDP Client Access Security Group"
  }
}
