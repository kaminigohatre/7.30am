provider "aws" {
    profile = "krishna"
    region = "ap-south-1"
  
}


# example-2 with variables list of string 

variable "ami" {
  type    = string
  default = "ami-0d2614eafc1b0e4d2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "name" {
  type    = list(string)
  default = [ "dev","test" ,"prod"]
}

# main.tf
resource "aws_instance" "sandbox" {
  ami           = var.ami
  instance_type = var.instance_type
  #count         = length(var.name)
  for_each = toset(var.name)

  tags = {
    Name = each.value
  }
}