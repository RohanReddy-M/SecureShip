resource "aws_security_group" "ssh_sg" {
  name        = "secureship-sg"
  description = "Allow SSH"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app" {
  ami                    = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2 in ap-south-1
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "SecureShip-EC2"
  }
}
