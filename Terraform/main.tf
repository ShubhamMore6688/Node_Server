provider "aws" {
  region = var.region
}

resource "aws_security_group" "server_sg" {
  name = "server_security_group"
  description = "allow http and ssh"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0./0"]
  }

  ingress {
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0./0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0./0"]
  }

}

resource "aws_instance" "node_server" {
  ami = "ami-0c56b159cbfafe1f0"
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = [aws_security_group.server_sg.name]
  user_data = file("install_docker.sh")
  tags ={
    Name = "node_server"
  }

}