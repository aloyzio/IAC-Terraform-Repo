# working with public modules

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "Koji-Tech-VPC"
  cidr = "100.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["100.0.1.0/24", "100.0.3.0/24", "100.0.5.0/24"]
  public_subnets  = ["100.0.0.0/24", "100.0.2.0/24", "100.0.4.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
# slice(data.aws_availability_zones.azs.names, 0, 3)

# resource_name logica
  
/*variable "create_instance" {
  type = bool
  default = true
# resource_name logical_name

resource = "aws_instance" "web" {
  count = var.create_instance ? 1 : 0
  
  ami  = data
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_subnet.id

  tags = {
    Name = "terraform"
  }
 [] list
 {} dictionary
 "" string
 bool true of false
 {[]} map of list
 {[""]} map of list of strings  
}
*/
