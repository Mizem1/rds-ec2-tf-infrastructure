module "network" {
  source               = "./modules/network"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  private_subnet_1_cidr = "10.0.2.0/24"
  private_subnet_2_cidr = "10.0.3.0/24"
}


module "compute" {
  source            = "./modules/compute"
  ami               = "ami-04b4f1a9cf54c11d0" # Ubuntu 20.04
  instance_type     = "t3.micro"
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.network.ec2_security_group_id
  key_name          = "backend-key"
}

module "databases" {
  source               = "./modules/databases"
  db_name              = var.DB_NAME
  username             = var.USERNAME
  password             = var.PASSWORD
  allocated_storage    = 20
  max_allocated_storage = 20
  engine_version       = "16"
  instance_class       = "db.t3.micro"
  security_group_id    = module.network.rds_security_group_id
  private_subnet_1_id  = module.network.private_subnet_1_id
  private_subnet_2_id  = module.network.private_subnet_2_id
}


