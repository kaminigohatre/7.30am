module "dev" {
    source = "../day-1"
    ami_id = "ami-0fd05997b4dff7aac"
    keyname = "16DEC"
    type = "t2.micro"
  
}