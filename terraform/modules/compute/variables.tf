variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-04b4f1a9cf54c11d0" # Ubuntu 20.04 (Example)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "ID of the public subnet where EC2 will be deployed"
  type        = string
}

variable "security_group_id" {
  description = "ID of the security group for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key to access the instance"
  type        = string
}

variable "public_key" {
  description = "Public key for SSH access"
  type        = string
}
