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

output "env-Name" {
  value = "Environment Name - ${var.env} - ${(upper(var.env)}"
}

#*.auto.tfvars are the files which will pick up automatically along with this if the filename is terraform.auto.tfvars then also terraform picks this vars file automatically , no need to specify exclusively.
variable "common" {}
output "common" {
  value = var.common
}

#data in terraform is 3 types
#1.string -  need quoting ,only double quotes , TF doesn't supports single quotes
#2.numbers - no quotes
#3.boolean - no quotes