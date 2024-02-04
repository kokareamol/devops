provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "web"{
    instance_type = "t2.micro"
    ami = "ami-0d63de463e6604d0a"
    key_name = "kp_latest"
}

resource "aws_security_group" "project_sg" {
  name        = "project_sg"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "project_sg"
  }
}

