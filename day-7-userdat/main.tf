resource "aws_instance" "dev" {
    ami = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    key_name = "16DEC"
    availability_zone = "ap-south-1b"
    user_data = file("test.sh")
    tags = {
        Name = "dev"
    }
}