terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.5.0"
    }
  }
}

provider "hcp" {
  client_id     = var.hcp_creds.client_id
  client_secret = var.hcp_creds.client_secret
}

resource "hcp_vault_cluster" "demo" {
  cluster_id = var.cluster_id
  hvn_id     = data.hcp_hvn.demo.hvn_id

  public_endpoint = true
  # tier = "Development"
}
