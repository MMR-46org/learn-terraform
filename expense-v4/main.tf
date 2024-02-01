resource "aws_instance" "instances" {
  for_each               = var.components
  ami                    = data.aws_ami.centos8.image_id
  instance_type          = lookup(each.value, "instance_type", "t3.micro")
  vpc_security_group_ids = var.vpc_security_group_id

  tags = {
    Name = lookup(each.value, "name" , null)
  }
}

resource "aws_route53_record" "records" {
  for_each               = var.components
  zone_id                = var.zone-id
  name                   = lookup(each.value, "name" , null)   #"${element(var.components, count.index)}-dev"
  type                   = "A"
  ttl                    = 30
  records                = lookup(lookup(aws_instance.instances,each.key, null) , "private_ip" , null)
}