terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "4.80.0"
    }
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_managed_disk" "res-0" {
  create_option                     = "FromImage"
  disk_access_id                    = ""
  disk_encryption_set_id            = ""
  disk_iops_read_only               = 0
  disk_iops_read_write              = 500
  disk_mbps_read_only               = 0
  disk_mbps_read_write              = 60
  disk_size_gb                      = 30
  edge_zone                         = ""
  gallery_image_reference_id        = ""
  hyper_v_generation                = "V2"
  image_reference_id                = "/Subscriptions/6a400d98-1077-40cc-8a19-9fdb774578e2/Providers/Microsoft.Compute/Locations/CentralIndia/Publishers/canonical/ArtifactTypes/VMImage/Offers/ubuntu-24_04-lts/Skus/server/Versions/24.04.202608070"
  location                          = "centralindia"
  max_shares                        = 0
  name                              = "azure-vm1_OsDisk_1_607c7b3cfac445f8938d2d4cd8329e46"
  network_access_policy             = "AllowAll"
  on_demand_bursting_enabled        = false
  optimized_frequent_attach_enabled = false
  os_type                           = "Linux"
  performance_plus_enabled          = false
  public_network_access_enabled     = true
  resource_group_name               = "HYBRIDCLOUDDEMORG"
  secure_vm_disk_encryption_set_id  = ""
  security_type                     = ""
  source_resource_id                = ""
  source_uri                        = ""
  storage_account_id                = ""
  storage_account_type              = "Standard_LRS"
  tags                              = {}
  tier                              = ""
  trusted_launch_enabled            = true
  upload_size_bytes                 = 0
  zone                              = "2"
}
resource "azurerm_linux_virtual_machine" "res-1" {
  admin_password                                         = "" # Masked sensitive attribute
  admin_username                                         = "azureuser"
  allow_extension_operations                             = true
  availability_set_id                                    = ""
  bypass_platform_safety_checks_on_user_schedule_enabled = false
  capacity_reservation_group_id                          = ""
  computer_name                                          = "azure-vm1"
  custom_data                                            = "" # Masked sensitive attribute
  dedicated_host_group_id                                = ""
  dedicated_host_id                                      = ""
  disable_password_authentication                        = false
  disk_controller_type                                   = "SCSI"
  edge_zone                                              = ""
  encryption_at_host_enabled                             = false
  eviction_policy                                        = ""
  extensions_time_budget                                 = "PT1H30M"
  license_type                                           = ""
  location                                               = "centralindia"
  max_bid_price                                          = -1
  name                                                   = "azure-vm1"
  network_interface_ids                                  = [azurerm_network_interface.res-4.id]
  os_managed_disk_id                                     = "/subscriptions/6a400d98-1077-40cc-8a19-9fdb774578e2/resourceGroups/HybridCloudDemoRG/providers/Microsoft.Compute/disks/azure-vm1_OsDisk_1_607c7b3cfac445f8938d2d4cd8329e46"
  patch_assessment_mode                                  = "ImageDefault"
  patch_mode                                             = "ImageDefault"
  platform_fault_domain                                  = -1
  priority                                               = "Regular"
  provision_vm_agent                                     = true
  proximity_placement_group_id                           = ""
  reboot_setting                                         = ""
  resource_group_name                                    = "HybridCloudDemoRG"
  secure_boot_enabled                                    = true
  size                                                   = "Standard_B2ats_v2"
  source_image_id                                        = ""
  tags                                                   = {}
  user_data                                              = ""
  virtual_machine_scale_set_id                           = ""
  vm_agent_platform_updates_enabled                      = false
  vtpm_enabled                                           = true
  zone                                                   = "2"
  additional_capabilities {
    hibernation_enabled = false
    ultra_ssd_enabled   = false
  }
  boot_diagnostics {
    storage_account_uri = ""
  }
  os_disk {
    caching                          = "ReadWrite"
    disk_encryption_set_id           = ""
    disk_size_gb                     = 30
    name                             = "azure-vm1_OsDisk_1_607c7b3cfac445f8938d2d4cd8329e46"
    secure_vm_disk_encryption_set_id = ""
    security_encryption_type         = ""
    storage_account_type             = "Standard_LRS"
    write_accelerator_enabled        = false
  }
  source_image_reference {
    offer     = "ubuntu-24_04-lts"
    publisher = "canonical"
    sku       = "server"
    version   = "latest"
  }
}
resource "azurerm_local_network_gateway" "res-3" {
  address_space       = []
  gateway_address     = "35.173.114.58"
  gateway_fqdn        = ""
  location            = "centralindia"
  name                = "vpn-local-gateway-1"
  resource_group_name = "HybridCloudDemoRG"
  tags                = {}
  bgp_settings {
    asn                 = 64512
    bgp_peering_address = "169.254.21.101"
    peer_weight         = 0
  }
}
resource "azurerm_network_interface" "res-4" {
  accelerated_networking_enabled = true
  auxiliary_mode                 = ""
  auxiliary_sku                  = ""
  dns_servers                    = []
  edge_zone                      = ""
  internal_dns_name_label        = ""
  ip_forwarding_enabled          = false
  location                       = "centralindia"
  name                           = "azure-vm1197"
  resource_group_name            = "HybridCloudDemoRG"
  tags                           = {}
  ip_configuration {
    gateway_load_balancer_frontend_ip_configuration_id = ""
    name                                               = "ipconfig1"
    primary                                            = true
    private_ip_address                                 = "10.20.0.4"
    private_ip_address_allocation                      = "Dynamic"
    private_ip_address_version                         = "IPv4"
    public_ip_address_id                               = azurerm_public_ip.res-8.id
    subnet_id                                          = "/subscriptions/6a400d98-1077-40cc-8a19-9fdb774578e2/resourceGroups/HybridCloudDemoRG/providers/Microsoft.Network/virtualNetworks/azure-network-vnet/subnets/app-subnet"
  }
}
resource "azurerm_network_security_group" "res-5" {
  location            = "centralindia"
  name                = "azure-vm1-nsg"
  resource_group_name = "HybridCloudDemoRG"
  security_rule = [{
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "*"
    destination_port_ranges                    = []
    direction                                  = "Outbound"
    name                                       = "allow_outbound"
    priority                                   = 100
    protocol                                   = "*"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
    }, {
    access                                     = "Allow"
    description                                = ""
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "22"
    destination_port_ranges                    = []
    direction                                  = "Inbound"
    name                                       = "default-allow-ssh"
    priority                                   = 1000
    protocol                                   = "Tcp"
    source_address_prefix                      = "*"
    source_address_prefixes                    = []
    source_application_security_group_ids      = []
    source_port_range                          = "*"
    source_port_ranges                         = []
  }]
  tags = {}
}
resource "azurerm_public_ip" "res-6" {
  allocation_method       = "Static"
  ddos_protection_mode    = "VirtualNetworkInherited"
  domain_name_label       = ""
  domain_name_label_scope = ""
  edge_zone               = ""
  idle_timeout_in_minutes = 4
  ip_tags                 = {}
  ip_version              = "IPv4"
  location                = "centralindia"
  name                    = "VPN-Gateway-IP1"
  resource_group_name     = "HybridCloudDemoRG"
  reverse_fqdn            = ""
  sku                     = "Standard"
  sku_tier                = "Regional"
  tags = {
    Project = "HybridCloudDemo"
  }
  zones = ["1", "2", "3"]
}
resource "azurerm_public_ip" "res-7" {
  allocation_method       = "Static"
  ddos_protection_mode    = "VirtualNetworkInherited"
  domain_name_label       = ""
  domain_name_label_scope = ""
  edge_zone               = ""
  idle_timeout_in_minutes = 4
  ip_tags                 = {}
  ip_version              = "IPv4"
  location                = "centralindia"
  name                    = "VPN-Gateway-IP2"
  resource_group_name     = "HybridCloudDemoRG"
  reverse_fqdn            = ""
  sku                     = "Standard"
  sku_tier                = "Regional"
  tags = {
    Project = "HybridCloudDemo"
  }
  zones = ["1", "2", "3"]
}
resource "azurerm_public_ip" "res-8" {
  allocation_method       = "Static"
  ddos_protection_mode    = "VirtualNetworkInherited"
  domain_name_label       = ""
  domain_name_label_scope = ""
  edge_zone               = ""
  idle_timeout_in_minutes = 4
  ip_tags                 = {}
  ip_version              = "IPv4"
  location                = "centralindia"
  name                    = "azure-vm1-ip"
  resource_group_name     = "HybridCloudDemoRG"
  reverse_fqdn            = ""
  sku                     = "Standard"
  sku_tier                = "Regional"
  tags                    = {}
  zones                   = ["2"]
}
resource "azurerm_virtual_network_gateway" "res-9" {
  active_active                         = true
  bgp_enabled                           = true
  bgp_route_translation_for_nat_enabled = false
  dns_forwarding_enabled                = false
  edge_zone                             = ""
  enable_bgp                            = true
  generation                            = "Generation2"
  ip_sec_replay_protection_enabled      = true
  location                              = "centralindia"
  maximum_scale_unit                    = 0
  minimum_scale_unit                    = 0
  name                                  = "azure-vpn-gateway"
  private_ip_address_enabled            = false
  remote_vnet_traffic_enabled           = false
  resource_group_name                   = "HybridCloudDemoRG"
  sku                                   = "VpnGw2AZ"
  tags = {
    Project = "HybridCloudDemo"
  }
  type                        = "Vpn"
  virtual_wan_traffic_enabled = false
  vpn_type                    = "RouteBased"
  bgp_settings {
    asn         = 65515
    peer_weight = 0
    peering_addresses {
      apipa_addresses       = ["169.254.21.102", "169.254.22.102"]
      ip_configuration_name = "default"
    }
    peering_addresses {
      apipa_addresses       = ["169.254.21.102", "169.254.22.102"]
      ip_configuration_name = "activeActive"
    }
  }
  ip_configuration {
    name                          = "default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.res-6.id
    subnet_id                     = "/subscriptions/6a400d98-1077-40cc-8a19-9fdb774578e2/resourceGroups/HybridCloudDemoRG/providers/Microsoft.Network/virtualNetworks/azure-network-vnet/subnets/GatewaySubnet"
  }
  ip_configuration {
    name                          = "activeActive"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.res-7.id
    subnet_id                     = "/subscriptions/6a400d98-1077-40cc-8a19-9fdb774578e2/resourceGroups/HybridCloudDemoRG/providers/Microsoft.Network/virtualNetworks/azure-network-vnet/subnets/GatewaySubnet"
  }
}
resource "azurerm_virtual_network" "res-10" {
  address_space                  = ["10.20.0.0/16", "10.30.0.0/16"]
  bgp_community                  = ""
  dns_servers                    = []
  edge_zone                      = ""
  flow_timeout_in_minutes        = 0
  location                       = "centralindia"
  name                           = "azure-network-vnet"
  private_endpoint_vnet_policies = "Disabled"
  resource_group_name            = "HybridCloudDemoRG"
  subnet = [{
    address_prefixes                              = ["10.20.0.0/24"]
    default_outbound_access_enabled               = false
    delegation                                    = []
    id                                            = "/subscriptions/6a400d98-1077-40cc-8a19-9fdb774578e2/resourceGroups/HybridCloudDemoRG/providers/Microsoft.Network/virtualNetworks/azure-network-vnet/subnets/app-subnet"
    name                                          = "app-subnet"
    private_endpoint_network_policies             = "Disabled"
    private_link_service_network_policies_enabled = true
    route_table_id                                = ""
    security_group                                = ""
    service_endpoint_policy_ids                   = []
    service_endpoints                             = []
    }, {
    address_prefixes                              = ["10.20.1.0/24"]
    default_outbound_access_enabled               = false
    delegation                                    = []
    id                                            = "/subscriptions/6a400d98-1077-40cc-8a19-9fdb774578e2/resourceGroups/HybridCloudDemoRG/providers/Microsoft.Network/virtualNetworks/azure-network-vnet/subnets/GatewaySubnet"
    name                                          = "GatewaySubnet"
    private_endpoint_network_policies             = "Disabled"
    private_link_service_network_policies_enabled = true
    route_table_id                                = ""
    security_group                                = ""
    service_endpoint_policy_ids                   = []
    service_endpoints                             = []
  }]
  tags = {
    Project = "HybridCloudDemo"
  }
}
resource "azurerm_network_interface_security_group_association" "res-11" {
  network_interface_id      = azurerm_network_interface.res-4.id
  network_security_group_id = azurerm_network_security_group.res-5.id
}
