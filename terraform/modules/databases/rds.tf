resource "aws_db_subnet_group" "rds_subnet_group" {
  name        = "rds-subnet-group"
  description = "Subnet group for RDS instance"
  subnet_ids  = [var.private_subnet_1_id, var.private_subnet_2_id]  # ✅ Uses both private subnets

  tags = {
    Name = "RDS Subnet Group"
  }
}

resource "aws_db_instance" "postgres" {
  allocated_storage       = var.allocated_storage
  max_allocated_storage   = var.max_allocated_storage
  engine                  = "postgres"
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  db_name                 = var.db_name
  username                = var.username
  password                = var.password
  parameter_group_name    = "default.postgres16"
  skip_final_snapshot     = true
  publicly_accessible     = false
  storage_type            = "gp2"
  multi_az                = false  # Set to true for high availability
  deletion_protection     = false
  backup_retention_period = 7
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids  = [var.security_group_id]

  tags = {
    Name = "Postgres16-FreeTier"
  }
}
