resource "aws_instance" "test" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  provision er "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "sudo install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

}

data "aws_security_group" "selected" {
   Name = "allow-all"
}

#decouple provisioner in following scenarios

#1.if provisioner is fails then instance we dont want to re create my instance
#2.requirement emergence in a such a way that we need to re run the provisioner again an again

resource "aws_instance" "test1" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]
}

resource "null_resource" "provisioner" {
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.test1.public_ip
    }

    inline = [
      "install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}
