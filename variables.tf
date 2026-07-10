variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
  default     = "my-cluster" # change this if you want
}

variable "environment" {
  description = "Environment name (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}
