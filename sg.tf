resource "aws_security_group" "my_security_group" {
  name        = "my-sg-new"
  description = "Allow SSH and HTTP"
#   vpc_id      = "vpc-xxxxxxxxxxxxxxxxx" 

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "new-sg"
  }

}