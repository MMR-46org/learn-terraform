resource "aws_instance" "instance" {
  ami                    = data.aws_ami.centos8.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_id

  tags = {
    Name = var.name
  }
}

resource "aws_route53_record" "records" {
  zone_id = var.zone-id
  name    = "${var.name}-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}