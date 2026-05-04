terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_pages_project" "frontend_dev" {
  account_id        = var.cloudflare_account_id
  name              = "brew-and-co-dev"
  production_branch = "dev"
}

resource "cloudflare_pages_project" "frontend_prod" {
  account_id        = var.cloudflare_account_id
  name              = "brew-and-co-prod"
  production_branch = "main"
}
