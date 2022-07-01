variable "instance_ami_id" {
  description = "The AMI to use for the IDP host"
  default     = "ami-0322ca2f4bfa72ccd"
}

variable "replicas" {
  description = "The number of replicas to create for the IDP host"
  default     = 2
}

variable "additional_server_sg" {
  description = "The additional security group to apply to the IDP host"
  type        = list(string)
}

variable "instance_type" {
  description = "The instance type to use for the IDP host"
  default     = "t4g.medium"
}

variable "public_zone" {
  description = "The public DNS zone to use for the IDP host"
}

variable "private_zone" {
  description = "The private DNS zone to use for the IDP host"
}

variable "reverse_zone" {
  description = "The reverse DNS zone to use for the IDP host"
}

variable "base_domain" {
  description = "The base domain to use for the IDP host"
  type        = string
}

variable "subdomain" {
  description = "The subdomain to use for the IDP host"
  default     = "idp"
  type        = string
}

variable "main_vpc" {
  description = "The VPC to use for the IDP host"
}

variable "subnets" {
  description = "The subnets to use for the IDP host"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "The key pair to use for the IDP host"
  type        = string
}
