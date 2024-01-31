variable "ami"{
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_id" {
  default = ["sg-04e445f50c19e84f2"]
}

variable "zone-id" {
  default = "Z0189341LG4L24HIU4QF"
}