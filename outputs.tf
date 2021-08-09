output "security_group_id" {
  value       = aws_security_group.sg.id
  description = "Security Group ID"
}

output "security_group_arn" {
  value       = aws_security_group.sg.arn
  description = "Security Group ARN"
}

