provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "myinstance" {
  ami = "ami-0ec10929233384c7f"
  instance_type = "t3.micro"
  key_name = "newkey"
  vpc_security_group_ids = [ sg-0c111f0c35380037f ]
  availability_zone = "us-east-1b"
  tags = {
    name = "pavan"
    Name = "myinstance"
    Environment = "dev" 
  }
} 