resource "aws_instance" "test" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = var.instance_type

  tags = {
    name = var.name
  }
}
variable "name" {}
variable "instance_type" {}