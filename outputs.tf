output "admin_username" {
  description = "Windows admin username"
  value       = "${local.admin_username}"
}

output "windows_passwords" {
  description = "Windows admin password"
  value       = ["${azurerm_virtual_machine.windows_instance.os_profile.*.admin_password}"]
}

output "private_ips" {
  description = "List of private ip addresses created by this module"
  value       = ["${azurerm_network_interface.instance_nic.*.private_ip_address}"]
}

output "public_ips" {
  description = "List of public ip addresses created by this module"
  value       = ["${azurerm_public_ip.instance_public_ip.*.fqdn}"]
}
