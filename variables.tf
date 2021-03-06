
variable "cidr_block" {
  type        = string
  description = "vpc cidr block"
  default     = "10.0.0.0/16"
}

#public_cidr =  "10.0.0.0/24", "10.0.2.0/24", "10.0.0.4.0/24"
#private_cidr = "10.0.1.0/24", "10.0.3.0/24", "10.0.0.5.0/24" 
variable "region" {
  type        = string
  description = "resource region"
  default     = "us-east-1"
}

variable "pub_subnetcidr" {
  type        = string
  description = "public subnet cidr"
  default     = "10.0.2.0/24"
}

variable "priv_subnetcidr" {
  type        = string
  description = "private subnet cidr"
  default     = "10.0.1.0/24"
}

/*variable "ami_id" {
  type        = string
  description = "instance ami"
  default     = "ami-0022f774911c1d690"
}*/

variable "instance_type" {
  type        = string
  description = "intance type"
  default     = "t2.micro"

}