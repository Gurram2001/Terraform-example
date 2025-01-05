
# Terraform AWS EC2 Instance Setup

## Prerequisites

Before you start, ensure you have the following tools and configurations in place:

## 1. Install Terraform
If Terraform is not installed on your system, follow the installation instructions on [Terraform's official website](https://developer.hashicorp.com/terraform/docs).

## 2. AWS Account
An active **AWS account** is required to create and manage AWS resources.

## 3. AWS CLI
Set up the **AWS CLI** with your access and secret keys. Ensure you configure your credentials by running the following command:

```bash
aws configure
```

# Terraform AWS EC2 Instance Configuration

This repository provides Terraform configuration files to create and manage an AWS EC2 instance.

---

## Repository Contents

- **`provider.tf`**: Specifies the required AWS provider and its configuration.
- **`main.tf`**: Defines the resource configuration for creating an EC2 instance.
  
### `main.tf`

The `main.tf` file defines the EC2 instance resource, specifying the AMI and instance type.

```hcl
resource "aws_instance" "karthik-vm" {
  ami           = "ami-0xxxxxxxxxd1e"  # The AMI ID to use for the instance
  instance_type = "t2.micro"               # The type of EC2 instance to create
  tags = {
   Name = "My EC2 instance",
 }
}
```
Add tags to your code, I had not kept in provider file. Make sure to copy the tags code as well.

### Get the AMI ID
To get an AMI ID, follow these steps:

1. Go to the **EC2 > AMIs** section in the AWS Management Console.
2. Search for the desired AMI (e.g., Ubuntu, Amazon Linux).
3. Copy the AMI ID from the results.

### Note

1. After writing code in the `.tf` file, use `terraform fmt` to automatically format the code and ensure consistent style.

---
## Usage

Follow these steps to use the Terraform configuration and create an EC2 instance:

---

### Step 1: Clone the Repository
Clone this repository to your local machine (if applicable):
```bash
git clone <repo URL> # copy URL from code section
cd <directroy created>
```

### Step 2: Initialize Terraform
Run the following command to initialize Terraform and download the required provider plugins:

```bash
terraform init
```

### Step 3: Review the Terraform Plan
Run the following command to review the resources Terraform will create:

```bash
terraform plan
```
### Step 4: Apply the Terraform Configuration
Run the following command to apply the Terraform configuration and create the EC2 instance:

```bash
terraform apply
```

### Step 5: Verify the EC2 Instance
Log in to your AWS Management Console and navigate to the **EC2 Dashboard** in the specified region to verify the created instance. Check the 'provider.tf' file for region information.
### Clean Up

To destroy the created EC2 instance and remove all resources, run the following command:

```bash
terraform destroy
```
#### Last but not least
I have followed this blog, it helps with your initial understanding of Terraform in a simple way. [Terraform Blog](https://spacelift.io/blog/terraform-tutorial)


