variable "hcp_creds" {
  description = "Credentials used for connecting to HCP"
  type = object({
    client_id     = string
    client_secret = string
  })
}
variable "cluster_id" {
  description = "The cluster ID used for the deployment"
  type        = string
}
variable "hvn_id" {
  description = "The ID of the HVN used for the deployment"
}

data "hcp_hvn" "demo" {
  hvn_id = var.hvn_id
}
