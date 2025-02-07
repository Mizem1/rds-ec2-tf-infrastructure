variable "db_name" {
  description = "Database name"
  type        = string
}

variable "username" {
  description = "Database username"
  type        = string
}

variable "password" {
  description = "Database password"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in GB"
  type        = number
  default     = 20
}

variable "max_allocated_storage" {
  description = "The maximum allocated storage in GB"
  type        = number
  default     = 20
}

variable "engine_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "16"
}

variable "instance_class" {
  description = "The instance type of the RDS database"
  type        = string
  default     = "db.t3.micro"
}

variable "security_group_id" {
  description = "The security group ID for the RDS instance"
  type        = string
}

variable "private_subnet_1_id" {
  description = "First private subnet ID for RDS"
  type        = string
}

variable "private_subnet_2_id" {
  description = "Second private subnet ID for RDS"
  type        = string
}
