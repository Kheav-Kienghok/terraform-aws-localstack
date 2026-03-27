output "website_url" {
  value = "http://${aws_s3_bucket.website.bucket}.s3-website.localhost.localstack.cloud:4566"
}

output "ec2_public_ip" {
  value = aws_instance.test.public_ip
}
