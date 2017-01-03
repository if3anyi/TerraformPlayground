variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "eu-west-1"
}
variable "AMIS" {
  type = "map"
  default = {
  eu-west-1 = "ami-6f587e1c"
  eu-west-2 = "ami-def456"
  }
}
