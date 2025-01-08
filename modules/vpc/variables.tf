variable "region" {
  type        = string
  description = "AWS Region"
}

variable "project_name" {
  type        = string
  description = "Project Name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "public_subnet_01_cidr" {
  type        = string
  description = "Public Subnet 01 CIDR"
}

variable "public_subnet_02_cidr" {
  type        = string
  description = "Public Subnet 02 CIDR"
}

variable "private_subnet_01_cidr" {
  type        = string
  description = "Private Subnet 01 CIDR"
}

variable "private_subnet_02_cidr" {
  type        = string
  description = "Private Subnet 02 CIDR"
}