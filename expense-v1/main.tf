resource "aws_instance" "frontend" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04e445f50c19e84f2"]

  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0189341LG4L24HIU4QF"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}



resource "aws_instance" "backend" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04e445f50c19e84f2"]

  tags = {
    Name = "backend-dev"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z0189341LG4L24HIU4QF"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]

}


resource "aws_instance" "mysql" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04e445f50c19e84f2"]

  tags = {
    Name = "mysql-dev"
  }
}


  resource "aws_route53_record" "mysql" {
    zone_id = "Z0189341LG4L24HIU4QF"
    name    = "mysql-dev"
    type    = "A"
    ttl     = 30
    records = [aws_instance.mysql.private_ip]
  }