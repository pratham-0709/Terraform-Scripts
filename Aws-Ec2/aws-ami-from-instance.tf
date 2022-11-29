terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.41.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-KEY"
}

resource "aws_ami_from_instance" "example" {
  name               = "terraform-example"
  source_instance_id = "INSTANCE-ID"
}
