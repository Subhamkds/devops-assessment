module "network" {
  source = "../../modules/network"
}

module "ecs" {
  source = "../../modules/ecs"
}

module "rds" {
  source = "../../modules/rds"
}
