variable "vpc_id" {
  type        = string
  description = "The ID of the VPC."
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the subnet."
}

variable "availability_zone" {
  type        = string
  description = "The availability zone for the subnet."
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Whether instances in the subnet receive a public IP on launch."
  default     = true
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet."
}
