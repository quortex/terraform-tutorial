variable "name" {
  type        = string
  description = "The name of the network."
  default     = "MyName"
}

variable "vpc_cidr_block" {
  type        = string
  description = "IP CIDR block of the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type        = string
  description = "IP CIDR block of the subnet"
  default     = "10.0.1.0/24"
}
