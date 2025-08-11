resource "aws_instance" "blocks-srv" {
  ami           = var.amiID[var.region]
  instance_type = "t3.small"
  key_name      = "blocks-key"
  vpc_security_group_ids = [
    aws_security_group.blocks-sg.id,
    aws_security_group.wazuh_stack.id
  ]
  availability_zone = var.zone
  private_ip        = "172.31.16.10"

  tags = {
    Name    = "blocks-srv"
    Project = "blocks-lab"
  }

  root_block_device {
    volume_size = 40
    volume_type = "gp3"
  }

  # Provisioning first things
  provisioner "file" {
    source      = "jumpstart.sh"
    destination = "/tmp/jumpstart.sh"
  }

  connection {
    type        = "ssh"
    user        = var.unixuser
    private_key = file("../../keys/iac_key")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/jumpstart.sh",
      "sudo /tmp/jumpstart.sh"
    ]
    #on_failure = continue
  }

}

output "blocks-public-ip" {
  value = aws_instance.blocks-srv.public_ip
}