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
  access_key = "AKIAVZF22XYKNNSOQN6D"
  secret_key = "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"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

resource "aws_instance" "test" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t2.micro"

  tags = {
    Name = "Server2"
  }
}

resource "aws_ec2_instance_state" "demo" {
  instance_id = "i-01197d744d703b3b9"
  state       = "running"
}
