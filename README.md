
# Terraform AWS EC2 Instance Setup

This Terraform configuration creates an AWS EC2 instance in the `ap-southeast-2` region using the provided AMI (`ami-003f5a76758516d1e`) and the `t2.micro` instance type. It uses the `hashicorp/aws` provider to interact with AWS.

## Prerequisites

Before using this Terraform configuration, ensure you have the following prerequisites:

- **Terraform**: Version 1.x or later installed. You can check your version with:
  ```bash
  terraform --version
