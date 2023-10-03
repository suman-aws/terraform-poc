provider "aws" {
  region = var.location
}
module "sgs" {
  source = "./sg_eks"
  vpc_id = var.vpc_id
}

module "EKS" {
  source     = "./eks"
  sg_ids     = module.sgs.security_group_public
  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids
}
