module "prod" {
    # source = "github.com/kaminigohatre/7.30am/day-8-module-ex2"
    ami_id = "ami-0fd05997b4dff7aac"
    instance_type = "t2.micro"
    key_name = "16DEC"
}