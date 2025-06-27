resource "aws_key_pair" "blocks-key" {
  key_name   = "blocks-key"
  public_key = file("../../keys/iac_key.pub")
}