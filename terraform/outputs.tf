output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.compute.public_ip
}

output "db_endpoint" {
  description = "RDS database endpoint"
  value       = module.databases.db_endpoint
}
