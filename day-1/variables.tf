variable "ami_id" {
  description = "inserting ami value"
  type = string
  default = "ami-0fd05997b4dff7aac"
}

variable "type" {
  default = "t2.micro"
  type = string
}

variable "keyname" {
    type = string
    default ="16DEC" 
  
}