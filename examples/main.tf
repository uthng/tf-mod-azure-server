module "k8s" {
  source                        = "../"
  server_group_name             = "terraform"
  server_location               = "francecentral"
  server_name                   = "k8s"
  server_nb_public_ip           = 2
  server_public_ip_dns          = ["k8s0", "k8s1"]
  server_remote_port            = 22
  server_count                  = 2
  server_image_publisher        = "RedHat"
  server_image_name             = "RHEL"
  server_image_version          = "7-RAW"
  server_type                   = "Standard_D2_v3"
#  data_disk                     = "${server_data_disk}"
#  data_disk_size_gb             = "${server_data_disk_size_gb}"
#  data_sa_type                  = "${server_data_sa_type}"

#  tags                          = "${server_tags}"
  vnet_address_space             = "11.0.0.0/16"
  vnet_subnet_prefixes           = ["11.0.1.0/24"]
}

//resource "azurerm_subnet" "subnet" {
  //name  = "subnet1"
  //address_prefix = "10.0.1.0/24"
  //resource_group_name = "terraform"
  //virtual_network_name = "acctvnet"
  //network_security_group_id = "${azurerm_network_security_group.k8s.id}"
//}

//resource "azurerm_network_security_group" "k8s" {
  //depends_on          = ["module.k8s"]
  //name                = "ssh"
  //location            = "francecentral"
  //resource_group_name = "terraform"

  //security_rule = [
    //{
      //name                       = "22tcp"
      //priority                   = 100
      //direction                  = "Inbound"
      //access                     = "Allow"
      //protocol                   = "Tcp"
      //source_port_range          = "*"
      //destination_port_range     = "22"
      //source_address_prefix      = "*"
      //destination_address_prefix = "*"
    //},
    //{
      //name                       = "6443tcp"
      //priority                   = 101
      //direction                  = "Inbound"
      //access                     = "Allow"
      //protocol                   = "Tcp"
      //source_port_range          = "*"
      //destination_port_range     = "6443"
      //source_address_prefix      = "*"
      //destination_address_prefix = "*"
    //},
    //{
      //name                       = "2379-2380tcp"
      //priority                   = 102
      //direction                  = "Inbound"
      //access                     = "Allow"
      //protocol                   = "Tcp"
      //source_port_range          = "*"
      //destination_port_range     = "2379-2380"
      //source_address_prefix      = "*"
      //destination_address_prefix = "*"
    //},
    //{
      //name                       = "10250-10252tcp"
      //priority                   = 103
      //direction                  = "Inbound"
      //access                     = "Allow"
      //protocol                   = "Tcp"
      //source_port_range          = "*"
      //destination_port_range     = "10250-10252"
      //source_address_prefix      = "*"
      //destination_address_prefix = "*"
    //},
    //{
      //name                       = "179tcp"
      //priority                   = 104
      //direction                  = "Inbound"
      //access                     = "Allow"
      //protocol                   = "Tcp"
      //source_port_range          = "*"
      //destination_port_range     = "179"
      //source_address_prefix      = "*"
      //destination_address_prefix = "*"
    //},
    //{
      //name                       = "30000-32767tcp"
      //priority                   = 105
      //direction                  = "Inbound"
      //access                     = "Allow"
      //protocol                   = "Tcp"
      //source_port_range          = "*"
      //destination_port_range     = "30000-32767"
      //source_address_prefix      = "*"
      //destination_address_prefix = "*"
    //}
  //]
//}
