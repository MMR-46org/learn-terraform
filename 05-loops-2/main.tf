variable  "fruits1" {
  default = {
    apple    = 10
    banana   = 20
  }
}



variable  "fruits2" {
  default    =   {
    apple = {
      name   = "apple"
      quantity = 10
    }
  banana =  {
    name   = "banana"
    quantity  = 20
  }

  }

}


resource "dummy_thing" "test" {
  for_each = var.fruits2
  provisioner "local-exec" {
    command = "echo ${each.key} = ${each.value}"
  }
}