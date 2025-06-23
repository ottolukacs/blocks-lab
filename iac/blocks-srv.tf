resource "aws_instance" "blocks-srv" {
  ami                    = var.amiID[var.region]
  instance_type          = "t2.micro"
  key_name               = "blocks-key"
  vpc_security_group_ids = [aws_security_group.blocks-sg.id]
  availability_zone      = var.zone
  private_ip = "172.31.16.10"

  tags = {
    Name    = "blocks-srv"
    Project = "blocks-lab"
  }

  provisioner "file" {
    source      = "jumpstart.sh"
    destination = "/tmp/jumpstart.sh"
  }

  connection {
    type        = "ssh"
    user        = var.unixuser
    private_key = file("iac_key")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/jumpstart.sh",
      "sudo /tmp/jumpstart.sh"
    ]
  }

}