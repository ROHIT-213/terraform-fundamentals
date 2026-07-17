terraform {
  cloud{
    organization = "Rohit-213"

    workspaces {
      project = "learn-terraform"
      name = "learn-terraform-get-started-aws"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">=1.2"
}