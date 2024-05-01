module "demo-1" {
  source = "./demo"
  name = "demo-1"
  instance_type = "t3.micro"
}

module "demo-2" {
  source = "./demo"
  name = "demo-2"
  instance_type = "t3.small"
}