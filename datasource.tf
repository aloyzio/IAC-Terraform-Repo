
#datat sources are used to pull down availability zones

data "aws_availability_zones" "azs" {
    state = "available"
}

# data.aws_availability_zones.azs