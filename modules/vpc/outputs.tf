output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

output "default_sg_id" {
  description = "Default security group ID of the VPC"
  value       = aws_security_group.default.id
}

output "db_subnet_group" {
  description = "DB subnet group name"
  value       = aws_db_subnet_group.db_subnet_group.name
}
