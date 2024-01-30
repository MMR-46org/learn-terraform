resource "aws_instance" "frontend" {
  ami                    = ami-0f3c7d07486cad139
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0777ad111a52fc757"]

  tags = {
    Name = "frontend-dev"
  }
}




resource "aws_instance" "backend" {
  ami                    = ami-0f3c7d07486cad139
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0777ad111a52fc757"]

  tags = {
    Name = "backend-dev"
  }
}



resource "aws_instance" "mysql" {
  ami                    = ami-0f3c7d07486cad139
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0777ad111a52fc757"]

  tags = {
    Name = "mysql-dev"
  }
}