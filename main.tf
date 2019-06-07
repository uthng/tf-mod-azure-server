# vim: sw=2 et ts=2 sts=2

provider "azurerm" {}

module "servers" {
  source                        = "Azure/compute/azurerm"
  resource_group_name           = "${var.server_group_name}"
  location                      = "${var.server_location}"
  vm_hostname                   = "${var.server_name}"
  nb_public_ip                  = "${var.server_nb_public_ip}"
  public_ip_dns                 = "${var.server_public_ip_dns}"
  remote_port                   = "${var.server_remote_port}"
  nb_instances                  = "${var.server_count}"
  vm_os_publisher               = "${var.server_image_publisher}"
  vm_os_offer                   = "${var.server_image_name}"
  vm_os_sku                     = "${var.server_image_version}"
  vm_size                       = "${var.server_type}"
  vnet_subnet_id                = "${module.network.vnet_subnets[0]}"
  ssh_key                       = "${var.server_ssh_key}"
  boot_diagnostics              = "true"
  delete_os_disk_on_termination = "true"
  storage_account_type          = "${var.server_storage_account_type}"
  data_disk                     = "${var.server_data_disk}"
  data_disk_size_gb             = "${var.server_data_disk_size_gb}"
  data_sa_type                  = "${var.server_data_sa_type}"

  tags                          = "${var.server_tags}"

  enable_accelerated_networking = "${var.server_accelerated_networking}"
}

module "network" {
  source              = "Azure/network/azurerm"
  version             = "~> 1.1.1"
  location            = "${var.server_location}"
  allow_rdp_traffic   = "true"
  allow_ssh_traffic   = "true"
  resource_group_name = "${var.server_group_name}"
  address_space       = "${var.vnet_address_space}"
  subnet_prefixes     = "${var.vnet_subnet_prefixes}"
  vnet_name                = "${var.vnet_name}"
}
