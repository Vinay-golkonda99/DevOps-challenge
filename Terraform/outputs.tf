output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.my_ec2.id
}

output "public_ip" {
  description = "Public IP address of the instance"
  value       = aws_instance.my_ec2.public_ip
}
