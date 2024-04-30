#declare variable with value

variable "x" {
  default = 100
}

#declare variable without value
#variable "y" {}


variable "y_list" {
  default = [1,2,3]
}

#print variable
output "x" {
  value = var.x
}

output "y" {
  value = var.y_list
}