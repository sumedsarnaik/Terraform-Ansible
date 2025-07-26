variable "region" {
  default = "eu-north-1"
}

variable "ami" {
  default = "ami-042b4708b1d05f512"
  description = "Amazon Linux 2 AMI ID"
}

variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
  description = "Your EC2 key pair name"
  default     = "nginx-key"
}