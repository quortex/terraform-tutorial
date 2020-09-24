variable "name" {
  type        = string
  description = "A name"
  default     = "MyName"
}

variable "ami" {
  type        = string
  description = "the image to use for the VM"
}

variable "instance_type" {
  type        = string
  description = "the type of VM instance"
}