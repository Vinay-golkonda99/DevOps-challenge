provider "aws" {
  region = var.region
}


data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# EC2 Instance
resource "aws_instance" "my_ec2" {
  ami             = var.ami_id != "" ? var.ami_id : data.aws_ami.latest_amazon_linux.id
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id

  tags = {
    Name = "Terraform-EC2"
  }
}
