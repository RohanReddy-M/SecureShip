variable "region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "key"
}

variable "my_ip" {
  description = "Your IP to allow SSH"
  default     = "223.187.67.136/32"
}
