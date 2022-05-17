
#local
locals {
  vpc_id = aws_vpc.example.id
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
}

resource "aws_instance" "web" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "Terraform"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.2.0/24"
  
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.1.0/24"
  
  tags = {
    Name = "terraform"
  }
}