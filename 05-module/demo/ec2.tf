resource "aws_instance" "test" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = var.instance_type

  tags = {
    Name = var.Name
  }
}
variable "Name" {}
variable "instance_type" {}