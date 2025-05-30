provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myinstance" {
  ami = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "new-key"
  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  tags = {
    Name = "mywebapp"
  }
}

resource "aws_instance" "myinstance2" {
  ami = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "new-key"
  vpc_security_group_ids = ["sg-0804ca5262af9fc27"]

  tags = {
    Name = "mywebapp2"
  }
}

resource "aws_instance" "myinstance3" {
  ami = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "new-key"
  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  tags = {
    Name = "mywebapp-3"
  }
}
