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

variable "instance_arch" {
  description = "The architecture to use for the IDP host"
  default     = "x86_64"

  type = string

  validation {
    condition = contains([
      "x86_64",
      "arm64",
    ], var.instance_arch)
    error_message = "must be either x86_64 or arm64"
  }
}

variable "region" {
  description = "The region to use for the IDP host"
  default     = "us-east-2"

  type = string

  validation {
    condition = contains([
      "af-south-1",
      "ap-east-1",
      "ap-northeast-1",
      "ap-northeast-2",
      "ap-northeast-3",
      "ap-south-1",
      "ap-southeast-1",
      "ap-southeast-2",
      "ap-southeast-3",
      "ca-central-1",
      "eu-central-1",
      "eu-north-1",
      "eu-south-1",
      "eu-west-1",
      "eu-west-2",
      "eu-west-3",
      "me-south-1",
      "sa-east-1",
      "us-east-1",
      "us-east-2",
      "us-west-1",
      "us-west-2"
    ], var.region)
    error_message = "must be a valid AWS region"
  }
}
