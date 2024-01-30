output "v1" {
  value = var.v1
}

output "first_value_in_list" {
  value = var.v2[0]
}

output "second_value_in_list" {
  value = var.v2[1]
}

output "third_value_in_list" {
  value = var.v2[2]
}

output "value_in_map" {
  value = var.v3["abc"]
}

output "value_in_map1" {
  value = lookup(var.v3, "abc1", "none")
}