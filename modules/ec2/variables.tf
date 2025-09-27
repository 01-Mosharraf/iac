variable "ami_id" {}
variable "instance_type" { default = "t3.micro" }
variable "subnet_id" {}
variable "sg_id" {}
# variable "key_name" {}
variable "env" {}
variable "tags" { 
    type = map(string) 
    default = {} 
    }

variable "key_name" {
  description = "Key pair name for EC2"
  type        = string
  default     = "key_mumbai" 
}
