module "vpc" {
  source = "./modules/vpc"

  name            = "vpc_eks_lab"

  cidr            = var.cidr
  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = true
  single_nat_gateway = true

  vpc_tags = {
    Name = "vpc_eks_lab"
  }

  tags = {
    cloud_area  = "AREA_TI_INFRAESTRUTURA"
    cloud_area_abreviado = "INFRA"
    workload = "LAB"
  }
}