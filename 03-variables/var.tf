#declare variable with value

variable "x" {
  default = 100
}

#declare variable without value
#variable "y" {}


variable "y_list" {
  default = [1,2,3]
}

variable "z_map" {
  default = {
    x = 10
    y = 20
  }
}

#print variable
output "x" {
  value = var.x
}

output "y" {
  value = var.y_list
}

output "z" {
  value = var.z_map
}


output "y_1" {
  value = var.y_list[1]
}

output "z_x" {
  value = var.z_map["x"]
}

#we can declare empty variables but data can be sent from files are called as tfvars
variable "env" {}
  output "env" {
    value = var.env
  }