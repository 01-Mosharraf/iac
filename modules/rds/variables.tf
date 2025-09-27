variable "username" {}
variable "password" { sensitive = true }
variable "db_subnet_group" {}
variable "sg_id" {}
variable "env" {}
variable "tags" { 
    type = map(string) 
    default = {} 
    }
