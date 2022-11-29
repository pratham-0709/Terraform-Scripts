terraform {
        required_providers{
                aws = {
                        source = "hashicorp/aws"
                        version = "~> 4.0"
                }
        }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRET-KEY"
}

resource "aws_ami_launch_permission" "example" {
  image_id = "IMAGE_ID"
  group = "all"
}

