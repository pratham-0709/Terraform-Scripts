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

resource "aws_ami_copy" "example" {
  name              = "terraform-example"
  description       = "A copy of ami-xxxxxxxx"
  source_ami_id     = "ami-074dc0a6f6c764218"
  source_ami_region = "ap-south-1"

  tags = {
    Name = "HelloWorld"
  }
}


