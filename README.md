<!-- BEGIN_TF_DOCS -->
# Basic FreeIPA Infrastructure

This repository lays out a module that allows you to quickly bootstrap a basic
infrastructure that can be used to run a FreeIPA Server. This DOES NOT install
the FreeIPA Server however. For that, I would recommend you use the
[official Ansible Playbook](https://github.com/freeipa/ansible-freeipa).

This repository is a labor of necessity rather than love. I had to write this
while I was refactoring our rather large terraform module into smaller and more
independent modules. Thus, this repository is a bit of a mess. However, since
it serves the purpose it should, I'm okay with it.

## Examples

```hcl

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=4.0, < 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_server_sg"></a> [additional\_server\_sg](#input\_additional\_server\_sg) | The additional security group to apply to the IDP host | `list(string)` | n/a | yes |
| <a name="input_base_domain"></a> [base\_domain](#input\_base\_domain) | The base domain to use for the IDP host | `string` | n/a | yes |
| <a name="input_instance_ami_id"></a> [instance\_ami\_id](#input\_instance\_ami\_id) | The AMI to use for the IDP host | `string` | `"ami-0322ca2f4bfa72ccd"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type to use for the IDP host | `string` | `"t4g.medium"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The key pair to use for the IDP host | `string` | n/a | yes |
| <a name="input_main_vpc"></a> [main\_vpc](#input\_main\_vpc) | The VPC to use for the IDP host | `any` | n/a | yes |
| <a name="input_private_zone"></a> [private\_zone](#input\_private\_zone) | The private DNS zone to use for the IDP host | `any` | n/a | yes |
| <a name="input_public_zone"></a> [public\_zone](#input\_public\_zone) | The public DNS zone to use for the IDP host | `any` | n/a | yes |
| <a name="input_replicas"></a> [replicas](#input\_replicas) | The number of replicas to create for the IDP host | `number` | `2` | no |
| <a name="input_reverse_zone"></a> [reverse\_zone](#input\_reverse\_zone) | The reverse DNS zone to use for the IDP host | `any` | n/a | yes |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | The subdomain to use for the IDP host | `string` | `"idp"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | The subnets to use for the IDP host | `list(string)` | `[]` | no |

## Outputs

No outputs.

## Resources

| Name | Type |
|------|------|
| [aws_instance.idp_host](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## License

This project is licensed under the GNU General Public License version 3 (GPLv3).
<!-- END_TF_DOCS -->
