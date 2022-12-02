terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAVC7CBAJTYDTMUECC"
  secret_key = "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"
}

resource "aws_ec2_capacity_reservation" "default" {
  instance_type     = "t2.micro"
  instance_platform = "Linux/UNIX"
  availability_zone = "ap-south-1a"
  instance_count    = 3
  end_date = "2022-12-03T18:20:50.52Z"
  end_date_type = "limited"
}
