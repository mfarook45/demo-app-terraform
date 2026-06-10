module "app" {
  source = "../../modules/app"

  namespace = "prod"
  app_name  = "demo-app"

  image    = "mfarook45/demo-app:latest"
  replicas = 3
}