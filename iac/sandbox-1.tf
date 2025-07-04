resource "aws_instance" "sandbox-1" {
  ami           = var.amiID[var.region]
  instance_type = "t2.micro"
  key_name      = "blocks-key"
  vpc_security_group_ids = [
    aws_security_group.blocks-sg.id,
    aws_security_group.wazuh_stack.id
  ]
  availability_zone = var.zone
  private_ip        = "172.31.16.11"

  tags = {
    Name    = "sandbox-1"
    Project = "blocks-lab"
  }
}

output "victim-public-ip" {
  value = aws_instance.sandbox-1.public_ip
}