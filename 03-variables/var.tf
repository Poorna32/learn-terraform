#declare variable with value
variable "x" {
  default = 100
}

#declare variable without value
variable "y" {}

#print variable
output "x" {
  value = "var.x"
}