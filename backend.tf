terraform {
  backend "s3" {
    bucket = "brew-and-co-tfstate"
    key    = "cloudflare/terraform.tfstate"

    endpoints = {
      s3 = "https://ecb247eba6b4b7a31c14c129811a26ec.r2.cloudflarestorage.com"
    }
    region = "auto"

    # Locking nativo sobre el object store (Terraform >= 1.11), sin DynamoDB
    use_lockfile = true

    # R2 no implementa las APIs de AWS que el backend valida por defecto
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
}
