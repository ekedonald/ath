module "vpc" {
  source                 = "../../modules/vpc"
  region                 = var.region
  vpc_cidr               = var.vpc_cidr
  project_name           = var.project_name
  private_subnet_01_cidr = var.private_subnet_01_cidr
  private_subnet_02_cidr = var.private_subnet_02_cidr
  public_subnet_01_cidr  = var.public_subnet_01_cidr
  public_subnet_02_cidr  = var.public_subnet_02_cidr
}

module "securitygroup" {
  source       = "../../modules/securitygroup"
  vpc_id       = module.vpc.vpc_id
  environment  = var.environment
  project_name = var.project_name
}

module "ecs" {
  source               = "../../modules/ecs"
  project_name         = var.project_name
  private_subnet_01_id = module.vpc.private_subnet_01_id
  private_subnet_02_id = module.vpc.private_subnet_02_id
  alb_tg_arn           = module.alb.alb_tg_arn
  web_sg_id            = module.securitygroup.web_sg_id
  ecr_image_name       = var.ecr_image_name
}

module "alb" {
  source              = "../../modules/alb"
  vpc_id              = module.vpc.vpc_id
  public_subnet_01_id = module.vpc.public_subnet_01_id
  public_subnet_02_id = module.vpc.public_subnet_02_id
  alb_sg_id           = module.securitygroup.alb_sg_id
  project_name        = var.project_name
}

module "cloudflare" {
  source               = "../../modules/cloudflare"
  cloudflare_api_token = var.cloudflare_api_token
  cloudflare_zone_id   = var.cloudflare_zone_id
  alb_dns_name         = module.alb.alb_dns_name
  environment          = var.environment
}
