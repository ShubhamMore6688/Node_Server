variable "region" {
  description = "aws region"
  default = "us-east-2"
}

variable "instance_type" {
  description = "aws instance type"
  default = "t2.micro"
  
}

variable "key_name" {
  description = "aws key name"
  default = "terraform"
  
}

variable "docker_image" {
  description = "docker image"
  default = "smore6688/node-server:latest"
  
}