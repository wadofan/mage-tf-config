variable "ansible_working_dir" {}
variable "ansible_remote_user" {}
variable "ansible_ssh_key" {}

resource "null_resource" "run_ansible_playbook" {
  triggers = {
    trigger = hcloud_server.scific.ipv4_address
  }
  provisioner "local-exec" {
    working_dir = var.ansible_working_dir
    command = "ansible-playbook --inventory ${hcloud_server.scific.ipv4_address}, --private-key ${var.ansible_ssh_key} --user ${var.ansible_remote_user} --extra-vars 'ssh_pkg=openssh-client cron_service=cron' playbook.yml"
  }
}

