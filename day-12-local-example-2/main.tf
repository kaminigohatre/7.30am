# Provider configuration
provider "aws" {
  region = var.region
}

# Variables for external inputs
variable "region" {
  default = "us-east-1" # Default AWS region
}

variable "environment" {
  default = "dev" # Environment name (e.g., dev, prod)
}

variable "bucket_name_prefix" {
  default = "fgjhjj" # Prefix for the S3 bucket name
}

# Local values for internal use
locals {
  bucket_name = "${var.bucket_name_prefix}-12345" # appending a unique suffix
  acl = "private"   #s3 bucket acl
}

# S3 Bucket Resource
resource "aws_s3_bucket" "example" {
  bucket = local.bucket_name
  acl    = "private" # Bucket ACL (Access Control List)

  tags = {
    Name        = local.bucket_name
    Environment = var.environment
  }
}

# Output to display the bucket name
output "s3_bucket_name" {
  value = aws_s3_bucket.example.bucket
}
