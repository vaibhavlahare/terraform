provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myinstance" {
  ami = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "new-key"

  tags = {
    Name = "mywebapp"
  }
}