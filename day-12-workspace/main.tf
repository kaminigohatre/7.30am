provider "aws" {
    profile = "krishna"
    region = "ap-south-1"
  
}


resource "aws_instance" "dev" {
    ami = "ami-0d2614eafc1b0e4d2"
    instance_type = "t2.micro"
    key_name = "16DEC"
    tags = {
      Name = "dev"
    }
   

}
