terraform {

  required_version = "1.15.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.51.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0532913178263be11"
  instance_type = "t2.micro"

  tags = {
    Name = "app-server"
  }
}

resource "aws_instance" "db_server" {
  ami           = "ami-0532913178263be11"
  instance_type = "t3.large"

  tags = {
    Name = "db-server"
  }
}
