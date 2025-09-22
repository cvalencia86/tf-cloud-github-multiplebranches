#this requires to login to terraform cloud using 'terraform login' command

#also since using AWS provider credsentials must be configured in terraform cloud undewr variables or locally 

#this defines the Terraform Cloud backend and AWS provider
/*terraform {
  cloud {
    organization = "cvalencia-remote"
    workspaces {
      name = "terraform-cloud-cv"
    }
  }
*/

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.13.0"
    }
  }
}
#defines the AWS provider and region
provider "aws" {
  region = "us-east-2"
}