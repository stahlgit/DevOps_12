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