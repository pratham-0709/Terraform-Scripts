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
  access_key = "Your Access key of AWS Account"
  secret_key = "Your Secret Key of AWS Account"
}

resource "aws_instance" "task1" {
  ami           = "ami-062df10d14676e201"
  instance_type = "t2.micro"

  tags = {
    Name = "server1"
  }
}

resource "aws_instance" "task2" {
  ami           = "ami-062df10d14676e201"
  instance_type = "t2.micro"

  tags = {
    Name = "server2"
  }
}

resource "aws_instance" "task3" {
  ami           = "ami-062df10d14676e201"
  instance_type = "t2.micro"

  tags = {
    Name = "server3"
  }
}

