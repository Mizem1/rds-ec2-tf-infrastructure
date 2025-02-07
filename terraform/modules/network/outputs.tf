output "vpc_id" {
  description = "ID of VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_1_id" {
  description = "ID of first private subnet"
  value       = aws_subnet.private_1.id
}

output "private_subnet_2_id" {
  description = "ID of second private subnet"
  value       = aws_subnet.private_2.id
}

output "rds_security_group_id" {
  description = "Security Group ID for RDS"
  value       = aws_security_group.rds.id
}

output "ec2_security_group_id" {
  description = "Security Group ID for EC2"
  value       = aws_security_group.ec2.id
}
