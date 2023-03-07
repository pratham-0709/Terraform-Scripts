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
  access_key = "Access Key"
  secret_key = "Secret Key"
}

resource "aws_ec2_host" "test" {
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1"
  host_recovery     = "on"
  auto_placement    = "on"
}
