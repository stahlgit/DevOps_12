variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "eu-central-1"
}

variable "bucket_name"{
    description = "The name of the S3 bucket"
    type        = string
    default     = "stahls-terraform-bucket"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-00cf59bc9978eb266" 
}


variable "key_name" {
  description = "Name of the key pair"
  default     = "cloud"
}
