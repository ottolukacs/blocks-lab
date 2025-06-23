variable "region" {
  default = "eu-central-1"
}

variable "zone" {
  default = "eu-central-1a"
}

variable "amiID" {
  type = map(any)
  default = {
    eu-central-1 = "ami-02003f9f0fde924ea"
    us-east-2    = "ami-0d1b5a8c13042c939"
  }
}

variable "unixuser" {
  default = "ubuntu"
}
