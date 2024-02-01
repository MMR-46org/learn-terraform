variable "components" {
  default = {
    frontend = {
      name   = "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name    = "mysql"
      instance_type   = "t3.small"
    }
  }
}


variable "zone-id" {
  default = "Z0189341LG4L24HIU4QF"
}

variable "vpc_security_group_id" {
  default = ["sg-04e445f50c19e84f2"]
}