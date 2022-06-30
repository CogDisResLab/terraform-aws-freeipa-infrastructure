terraform {

  # The version of Terraform to install.
  required_version = "> 0.13.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.0, < 5.0"
    }

  }
}
