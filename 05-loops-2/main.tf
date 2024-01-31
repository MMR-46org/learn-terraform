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


resource "null_resource" "test" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command = "echo ${each.key} = ${each.value}"
  }
}


resource "null_resource" "test1" {
  for_each = var.fruits2
  provisioner "local-exec" {
    command = "echo ${lookup(each.value, "name" , "null")} "
  }
}