variable "v1" {
  default = "hello world"
}

variable "v2" {
  default = ["hello world", 100, true]
}

variable "v3" {
  default = {
    abc = 100
    xyz = "two"
  }
}