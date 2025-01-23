provider "aws" {
    profile = "krishna"
    region = "ap-south-1"
  
}


locals {
  region = "us-east-1"
  environment = "dev"
  instance_type = {dev="t2.micro" , test="t2.nano"}
  ami = "ami-0d2614eafc1b0e4d2"
}

resource "aws_instance" "example" {
  ami           = local.ami # Amazon Linux 2 AMI
  instance_type = local.instance_type.dev

  tags = {
    Name        = "ExampleInstance"
    Environment = local.environment
  }
}