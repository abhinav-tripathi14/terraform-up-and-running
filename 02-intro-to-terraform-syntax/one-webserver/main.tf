terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "Abhinav-AWS-Instance" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"

}
resource "aws_security_group" "Abhinav-aws-security_group" {
  name = var.security_group_name
  ingress = [{
    cidr_blocks     = ["0.0.0.0/0"]
    description     = "8080"
    from_port       = 8080
    security_groups = ["value"]
    to_port         = 8080
  }]
}
