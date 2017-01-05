variable "admin_password" {
  description = "Windows Administrator password to login as."
}

variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
  default = "dhoerkey"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default = "eu-west-1"
}

# Windows Server 2012 R2 Base
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-ab381ed8" #windows 2012
  }
}


variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
