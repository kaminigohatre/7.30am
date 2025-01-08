resource "aws_instance" "dev" {
    ami = var.ami_id
    instance_type = var.type
    key_name = var.keyname
    availability_zone = "ap-south-1a"
    tags = {
        Name = "dev"
    }
  
}

