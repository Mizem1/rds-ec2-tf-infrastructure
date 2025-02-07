resource "aws_key_pair" "backend" {
  key_name   = var.key_name
  public_key = base64decode(var.public_key)  # ✅ Decode Base64-encoded key

  lifecycle {
    ignore_changes = [public_key]  # Prevents Terraform from recreating the key
  }
}



resource "aws_instance" "backend" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  tags = {
    Name = "BackendServer"
  }
}
