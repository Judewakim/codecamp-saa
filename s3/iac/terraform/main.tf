#check the confirm this is still the most recent required providers code code
#https://registry.terraform.io/providers/hashicorp/aws/latest
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.59.0"
    }
  }
}

provider "aws" {
  # Configuration options
}
