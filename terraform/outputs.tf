output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = [ aws_instance.nginx1.public_ip, 
  aws_instance.nginx2.public_ip,
  aws_instance.nginx3.public_ip ]
}

output "instance_private_ip" {
  description = "Retrieve a private IP address"
  value = [aws_instance.nginx3.private_ip]
}