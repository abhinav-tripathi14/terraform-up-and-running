output "public_ip" {
  value       = aws_instance.Abhinav-AWS-Instance.public_ip
  description = "Pubic IP value"
}