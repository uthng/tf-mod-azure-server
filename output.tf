output "private_ip" {
  value = "${module.servers.network_interface_private_ip}"
}

output "security_group_id" {
  value = "${module.servers.network_security_group_id}"
}

output "public_ip" {
  value = "${module.servers.public_ip_address}"
}

output "public_ip_dns_name" {
  value = "${module.servers.public_ip_dns_name}"
}

output "public_ip_id" {
  value = "${module.servers.public_ip_id}"
}

output "vm_ids" {
  value = "$module.servers.vm_ids"
}
