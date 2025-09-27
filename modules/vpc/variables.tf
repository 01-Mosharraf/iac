variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnets" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "env" {
  type        = string
  description = "Environment name (dev/staging/prod)"
}

variable "tags" {
  type    = map(string)
  default = {}
}

