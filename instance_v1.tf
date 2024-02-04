provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "web"{
    instance_type = "t2.micro"
    ami = "ami-0d63de463e6604d0a"
    key_name = "kp_latest"
}
