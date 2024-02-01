module "app-resources" {
  source                    = "./modules/app-resources"
  for_each                  = var.components
  instance_type             = lookup(var.components, "instance_type",  "t3.micro" )
  vpc_security_group_id     = var.vpc_security_group_id
  zone-id                   = var.zone-id
  name                      = lookup(var.components, "name", null)
}