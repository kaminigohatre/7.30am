provider "aws" {
    profile = "krishna"
    region = "ap-south-1"
  
}

provider "aws" {
    profile = "krishna"
    region = "us-east-1"
    alias = "devops"
  
}

resource "aws_s3_bucket" "mumbai" {
    bucket = "ahdhdgfh"
  
}

resource "aws_s3_bucket" "us" {
    bucket = "oppiytff"
    provider = aws.devops
  
}