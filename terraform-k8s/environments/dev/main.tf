terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.30"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

module "app" {
  source = "../../modules/app"

  namespace = "dev"
  app_name  = "demo-app"

  image    = "mfarook45/demo-app:latest"
  replicas = 1
}