variable "DB_NAME" {
  description = "Database name"
  type        = string
}

variable "USERNAME" {
  description = "Database admin username"
  type        = string
}

variable "PASSWORD" {
  description = "Database admin password"
  type        = string
  sensitive   = true
}


