terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "vpc" {
  source          = "../../modules/vpc"
  vpc_cidr        = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  azs             = ["ap-south-1a", "ap-south-1b"]  
  env             = "dev"

  tags = {
    Project = "Demo"
  }
}



module "ec2" {
  source      = "../../modules/ec2"
  ami_id      = "ami-02d26659fd82cf299"
  instance_type = "t3.micro"
  subnet_id   = module.vpc.public_subnet_ids[0]
  sg_id       = module.vpc.default_sg_id
  key_name    = "dev-key"
  env         = "dev"
}

module "rds" {
  source          = "../../modules/rds"
  username        = "admin"
  password        = "password123"
  db_subnet_group = module.vpc.db_subnet_group
  sg_id           = module.vpc.default_sg_id
  env             = "dev"
}
