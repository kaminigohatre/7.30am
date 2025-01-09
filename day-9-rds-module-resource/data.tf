data "aws_subnet" "subnet-01" {
  filter {
    name   = "tag:Name"
    values = ["subnet1"] # insert value here
  }
}
data "aws_subnet" "subnet-02" {
  filter {
    name   = "tag:Name"
    values = ["subnet2"] # insert value here
  }
}