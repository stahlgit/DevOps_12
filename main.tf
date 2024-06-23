provider "aws" {
    region = var.aws_region
}

resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
}

resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
        Name = "Terrform-EC2"
    }

}