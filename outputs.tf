output "hetzner_vps_public_ip4_addr" {
  value = hcloud_server.mage.ipv4_address
}

output "hetzner_vps_public_ip6_addr" {
  value = hcloud_server.mage.ipv6_address
}
