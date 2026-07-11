variable "aws_region" {
  description = "AWS region to deploy the instance into"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name for tagging and resource naming"
  type        = string
  default     = "dev"
}

variable "name_prefix" {
  description = "Prefix used for resource names"
  type        = string
  default     = "devbox"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "root_volume_size" {
  description = "Size of the root EBS volume in GiB"
  type        = number
  default     = 8
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to reach SSH. Restrict this to your IP address for better security."
  type        = string
  default     = "0.0.0.0/0"

  validation {
    condition     = can(cidrhost(var.allowed_ssh_cidr, 0))
    error_message = "allowed_ssh_cidr must be a valid CIDR block."
  }
}

variable "key_name" {
  description = "Existing EC2 key pair name to use for SSH access"
  type        = string
  default     = null
}

variable "tags" {
  description = "Additional tags to apply to resources"
  type        = map(string)
  default     = {}
}
