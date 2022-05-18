
# output ( output various resource attributes )

output "vpc_id" {
  description = "outputing vpc id"
  value       = local.vpc_id


}

output "public_ip" {
  description = "public ip address"
  value       = aws_instance.web.public_ip

}