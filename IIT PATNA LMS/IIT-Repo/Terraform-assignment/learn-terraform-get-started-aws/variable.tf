variable "instance_name" {
  description = "Value of the EC2 instance's Name tag"
  type        = string
  default     = "learn-terraform"
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
  default     = "t2.micro"
}