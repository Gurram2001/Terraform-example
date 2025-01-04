provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "karthik-vm" {
  ami           = "ami-003f5a76758516d1e"
  instance_type = "t2.micro"
}

