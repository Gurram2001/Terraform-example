provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "karthik-vm" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "New_VM"
  }
}

