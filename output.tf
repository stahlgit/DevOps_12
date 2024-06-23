output "bucket_name" {
    value = aws_s3_bucket.bucket.bucket
}

output "instance_id" {
    value = aws_instance.web.ami
}

output "instance_public_ip" {
    value = aws_instance.web.public_ip
}