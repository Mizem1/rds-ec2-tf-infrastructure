variable "DB_NAME" {
  description = "Database name"
  type        = string
}

variable "DB_USERNAME" {
  description = "Database admin username"
  type        = string
}

variable "DB_PASSWORD" {
  description = "Database admin password"
  type        = string
  sensitive   = true
}

variable "public_key" {
  description = "Public key for SSH access"
  type        = string
}


