variable "ansible_work_dir" {
  description = "Working directory for Ansible Playbook"
  type = string
}

variable "ansible_playbook_file" {
  description = "Name of the Ansible Playbook file"
  type = string
}

variable "ansible_remote_user" {
  description = "Remote user name for Ansible to log in"
  type = string
}

variable "ansible_ssh_key" {
  description = "Private SSH key path for Ansible to log in"
  type = string
}

resource "null_resource" "run_ansible_playbook" {
  triggers = {
    trigger = hcloud_server.mage.ipv4_address
  }
  provisioner "local-exec" {
    working_dir = var.ansible_work_dir
    command = <<EOT
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook \
--inventory ${hcloud_server.mage.ipv4_address}, \
--private-key ${var.ansible_ssh_key} \
--user ${var.ansible_remote_user} \
${var.ansible_playbook_file}
EOT
  }
}
