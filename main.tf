provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "Terraform-EC2"
  }
}

terraform {
  backend "s3" {
    bucket = "stahls-terraform-bucket"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}

variable "aws_region" {
  default = "eu-central-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
}

variable "instance_type" {
  description = "The instance type to use for the instance"
}

variable "key_name" {
  description = "The key name to use for the instance"
}
