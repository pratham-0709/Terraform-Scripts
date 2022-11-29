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
  access_key = "Your AWS Account Access Key"
  secret_key = "Your AWS Account Secret Key"
}

resource "aws_instance" "task1" {
  ami           = "ami-062df10d14676e201"
  instance_type = "t2.micro"

  tags = {
    Name = "server1"
  }
}

