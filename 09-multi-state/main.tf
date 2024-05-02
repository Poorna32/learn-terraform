terraform {
  backend "s3" {
    bucket = "tf-states3"
    key    = "test1/${var.env}/state"
    region = "us-east-1"
  }
}

output "env" {
  value = var.env
}

variable "env" {}