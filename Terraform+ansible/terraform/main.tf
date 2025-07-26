provider "aws" {
  region = var.region
  access_key = ""
  secret_key = ""
}

resource "aws_security_group" "nginx_sg" {
  name = "nginx_sg_v3"
  description = "allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "nginx_sg_v2"
  }

}
resource "aws_instance" "nginx" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  security_groups = [aws_security_group.nginx_sg.name]



  tags = {
    Name = "nginx-server"
  }
}