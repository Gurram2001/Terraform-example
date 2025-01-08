# Define AWS Region
variable "aws_region" {
  description = " The AWS region to create resources in "
  type        = string
  default     = "ap-southeast-2" #Sydney for now

}

variable "ami" {
  description = " EC2 AMI Details"
  type        = string
  default     = "ami-003f5a76758516d1e"
}

variable "instance_type" {
  description = " EC2 instance type"
  type        = string
  default     = "t2.micro"
}
