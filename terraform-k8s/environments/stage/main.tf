module "app" {
  source = "../../modules/app"

  namespace = "stage"
  app_name  = "demo-app"

  image    = "mfarook45/demo-app:latest"
  replicas = 2
}