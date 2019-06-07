# vim: sw=2 et ts=2 sts=2

variable "server_name" {
  description = "Server name. If count > 1, it will be suffixed by the counter"
}

variable "server_group_name" {
  description = "Name of resource group"
}

variable "server_location" {
  description = "Datacenter location"
  default = "francecentral"
}

variable "server_image_publisher" {
  description = "Azure image publisher. Ex: Canonical, etc."
  default = "Canonical"
}

variable "server_image_name" {
  description = "Azure image name. Ex: UbuntuServer, etc."
  default = "UbuntuServer"
}

variable "server_image_version" {
  description = "Azure image version. Ex: 16.04-LTS, etc."
  default = "16.04-LTS"
}

variable "server_type" {
  description = "Azure server type"
  default = "Standard_D2_v3"
}

variable "server_ssh_key" {
  description = "SSH key for server. Default: ~/.ssh/id_rsa.pub"
  default = "~/.ssh/id_rsa.pub"
}

variable "server_volumes" {
  description = "Additional volumes sharing lifetime of servers"
  type = "list"
  default = []
}

variable "server_count" {
  description = "Number of servers of the same type to be created"
  default = 1
}

variable "server_nb_public_ip" {
  description = "Public IP or not"
  default = "true"
}

variable "server_public_ip_dns" {
  default = []
}

variable "server_storage_account_type" {
  description = "Storage default type of the disk attached to VM. Ex: Standard_LRS, Standard_ZRS, Standard_GRS, Standard_RAGRS, Premium_LRS"
  default = "Standard_LRS"
}

variable "server_data_disk" {
  description = "Attach a data disk or not. Default: false"
  default = "false"
}

variable "server_data_disk_size_gb" {
  description = "Data disk size in GB."
  default = 64
}

variable "server_data_sa_type" {
  description = "Data disk type. Ex: Standard_LRS, Standard_ZRS, Standard_GRS, Standard_RAGRS, Premium_LRS"
  default = "Standard_LRS"
}

variable "server_accelerated_networking" {
  description = "Enable or not accelerated networking. Only work on certain instances."
  default = "false"
}

variable "server_remote_port" {
  description = "Remote porte to connect to the server"
  default = 22
}

variable "server_security_group" {
  description = "Azure security group"
  type = "map"
  default = {}
}

variable "server_security_rules" {
  description = "List of security rules attached to security group"
  type = "list"
  default = []
}

variable  "server_tags" {
  description = "Tags for server."
  default = {}
}

variable "vnet_name" {
  description = "Name of the vnet to create"
  default     = "acctvnet"
}

variable "vnet_address_space" {
  description = "The address space that is used by the virtual network."
  default     = "10.0.0.0/16"
}

variable "vnet_subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  default     = ["10.0.1.0/24"]
}

variable "vnet_subnet_names" {
  description = "A list of public subnets inside the vNet."
  default     = ["subnet1"]
}
