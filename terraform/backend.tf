terraform {
  backend "s3" {
    bucket         = "mizem1-cpo-simple-backend-rds-ec2-tfstates"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "mizem1-cpo-simple-backend-rds-ec2-terraform-locks"
  }
}
