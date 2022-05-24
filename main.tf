
locals {
  vpc_id = aws_vpc.kojitechs.id

  mandatory_tag = {
    line_of_business        = "hospital"
    ado                     = "max"
    tier                    = "WEB"
    operational_environment = upper(terraform.workspace)
    tech_poc_primary        = "udu.udu25@gmail.com"
    tech_poc_secondary      = "udu.udu25@gmail.com"
    application             = "http"
    builder                 = "udu.udu25@gmail.com"
    application_owner       = "kojitechs.com"
    vpc                     = "WEB"
    cell_name               = "WEB"
    component_name          = "kojitechs"
  }
}

# Child Module
# Create a VPC
resource "aws_vpc" "kojitechs" {
  cidr_block = var.cidr_block
}

resource "aws_instance" "web" {
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  ami           = data.aws_ami.server_ami.id

  tags = {
    Name = "ec2_instance"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = local.vpc_id
  cidr_block              = var.pub_subnetcidr
  availability_zone       = data.aws_availability_zones.azs.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = var.priv_subnetcidr
  availability_zone = data.aws_availability_zones.azs.names[1]

  tags = {
    Name = "private_subnet"
  }
}

