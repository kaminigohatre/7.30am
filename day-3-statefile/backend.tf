terraform {
  backend "s3" {
    bucket = "5jan"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
