resource "aws_instance" "dependent" {
    ami = "ami-0ec0e125bb6c6e8ec"
    instance_type = "t2.micro"
    key_name = "public"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "bypdryu" 
}

#terraform apply -target=aws_s3_bucket.dependent 
#terraform destroy -target=aws_s3_bucket.dependent
#terraform apply -target=aws_s3_bucket.dependent -target=aws_s3_bucket.dependent #by calling multiple resources 