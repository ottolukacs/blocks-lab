resource "aws_instance" "web" {
    ami = data.aws_ami.amiID.id
    instance_type = "t1.micro"
    key_name = "terraform"
    vpc_security_group_ids = [aws_security_group.terraform-sg.id]
    availability_zone = "eu-central-1a"

    tags = {
      Name = "terraform-web"
      Project = "web"
    }
  
}