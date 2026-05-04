output "frontend_dev_subdomain" {
  value = cloudflare_pages_project.frontend_dev.subdomain
}

output "frontend_prod_subdomain" {
  value = cloudflare_pages_project.frontend_prod.subdomain
}
