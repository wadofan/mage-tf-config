variable "ansible_working_dir" {}
variable "ansible_remote_user" {}
variable "ansible_ssh_key" {}

resource "null_resource" "run_ansible_playbook" {
  triggers = {
    trigger = hcloud_server.mage.ipv4_address
  }
  provisioner "local-exec" {
    working_dir = var.ansible_working_dir
    command = <<EOT
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook \
--inventory ${hcloud_server.mage.ipv4_address}, \
--private-key ${var.ansible_ssh_key} --user ${var.ansible_remote_user} \
playbook.yml
EOT
  }
}
