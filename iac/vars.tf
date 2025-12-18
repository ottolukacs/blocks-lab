variable "region" {
  default = "eu-central-1"
}

variable "zone" {
  default = "eu-central-1c"
}

variable "amiID" {
  type = map(any)
  default = {
    eu-central-1 = "ami-004e960cde33f9146"
    us-east-2    = "ami-0d1b5a8c13042c939"
  }
}

variable "unixuser" {
  default = "ubuntu"
}
