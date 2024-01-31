#resource "null_resource" "test" {
#  count  = 10
#}
#
#
#output "test" {
#  value = null_resource.test.*.id
#}


variable  "components" {
  default = ["frontend", "backend", "mysql"]
}

resource "aws_instance" "test" {
  count                  = length(var.components)
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04e445f50c19e84f2"]

  tags = {
    Name = element(var.components , count.index)
  }
}