output "vpc_id" {
  description = "ID of the created VPC."
  value       = module.vpc.vpc_id
}

output "security_group_id" {
  description = "ID of the created security group."
  value       = module.security_group.security_group_id
}

output "subnet_id" {
  description = "ID of the created subnet."
  value       = module.subnet.subnet_id
}
