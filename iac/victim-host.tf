resource "aws_instance" "victim-host" {
  ami                    = var.amiID[var.region]
  instance_type          = "t2.micro"
  key_name               = "blocks-key"
  vpc_security_group_ids = [aws_security_group.blocks-sg.id]
  availability_zone      = var.zone
  private_ip             = "172.31.16.11"

  tags = {
    Name    = "victim-host"
    Project = "blocks-lab"
  }
}

output "victim-public-ip" {
  value = aws_instance.victim-host.public_ip
}