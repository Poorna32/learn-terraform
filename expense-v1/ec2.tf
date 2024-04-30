resource "aws_instance" "frontend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00b26069c926d674a"]
  tags = {
    name = "frontend"
  }
}



resource "aws_instance" "backend" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00b26069c926d674a"]
  tags = {
    name = "backend"
  }
}


resource "aws_instance" "mysql" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-00b26069c926d674a"]
  tags = {
    name = "mysql"
  }
}