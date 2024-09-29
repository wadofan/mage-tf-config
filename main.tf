terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
  }
}

variable "hcloud_token" {
  type = string
  sensitive = true
}

provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_server" "node" {
  name        = "test"
  image       = "debian-12"
  server_type = var.vps_type
  location    = var.vps_location
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
