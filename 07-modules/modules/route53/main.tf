resource "aws_route53_record" "route53" {
  zone_id                = "Z0189341LG4L24HIU4QF"
  name                   = "test"
  type                   = "A"
  ttl                    = 30
  records                = [var.private_ip]
}



variable "private_ip" {}