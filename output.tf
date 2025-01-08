output "instance_id" {
  value       = aws_instance.karthik-vm.id
  description = "The ID of EC2 instance"
}

output "public_ip" {
  value       = aws_instance.karthik-vm.public_ip
  description = "Displays Public IP Address"
}

