
provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "ec2inst" {
  ami = "ami-0d71ea30463e0ff8d"
  instance_type = "t2.micro"
  key_name = "udemy"
  security_groups = [aws_security_group.secgrp.id]
  subnet_id = "subnet-05485241a54cf6221"
  
 }
