output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.devbox.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.devbox.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.devbox.public_dns
}

output "security_group_id" {
  description = "ID of the SSH security group"
  value       = aws_security_group.ssh.id
}
