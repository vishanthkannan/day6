provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Name = "Jenkins-Terraform-Instance"
  }
}
