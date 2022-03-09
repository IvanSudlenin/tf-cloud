variable "ami" {}
variable "region" {}
variable "instance_type" {}
variable "access_key" {}
variable "secret_key" {}
variable "subnet_id" {}

resource "aws_instance" "tf-cloud-demo" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id   = var.subnet_id
  tags = {
   Name = "tf-cloud-demo-server" 
  }
}
