resource "aws_instance" "test" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
}