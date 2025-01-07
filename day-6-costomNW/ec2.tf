
#create public servers

resource "aws_instance" "dev" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    key_name = "16DEC"
    subnet_id = aws_subnet.public.id
    associate_public_ip_address = true
    vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
    tags = {
      Name = "dev_ec2"
    }
  
}

#create private server