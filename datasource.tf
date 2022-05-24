
#data sources are used to pull down availability zones or existing resources

data "aws_availability_zones" "azs" {
  state = "available"
}

# data.aws_availability_zones.azs

# data for aws_ami

data "aws_ami" "server_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  /*filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }*/
}

#data.aws_ami.server_ami
#data sources
#variables ()
#count
#for_each
#syntaxing