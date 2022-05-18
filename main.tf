
#local
locals {
  vpc_id = aws_vpc.example.id
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "ec2_instance"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.pub_subnetcidr

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = var.priv_subnetcidr

  tags = {
    Name = "private_subnet"
  }
}