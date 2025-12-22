variable "region" {
  type        = string
  description = "AWS region"
}

variable "instance_type" {
  type        = string
}

variable "key_name" {
  type        = string
}

variable "project_name" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "ssh_allowed_cidr" {
  type        = string
}
