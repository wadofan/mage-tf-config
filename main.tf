terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_server" "scific" {
  name        = "scific-test"
  image       = var.hetzner_image
  server_type = var.hetzner_vps_type
  location    = var.hetzner_location
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
