variable "app_server_instance_type" {
  description = "The instance type for the app server"
  type        = string

  validation {
    condition     = contains(["t2.micro", "t3.small", "t3.medium"], var.app_server_instance_type)
    error_message = "app_server_instance_type must be one of: t2.micro, t3.small, t3.medium"
  }
}

variable "db_server_instance_type" {
  description = "The instance type for the database server"
  type        = string

  validation {
    condition     = contains(["t2.micro", "t3.small", "t3.medium"], var.db_server_instance_type)
    error_message = "db_server_instance_type must be one of: t2.micro, t3.small, t3.medium"
  }
}

variable "app_server_name" {
  description = "The name of the app server"
  type        = string
}

variable "db_server_name" {
  description = "The name of the database server"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_security_group_id" {
  description = "List of VPC security group IDs to associate with the instances"
  type        = string
}