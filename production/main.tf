# ------------ Resource group ------------
resource "azurerm_resource_group" "rg" {
  name     = "webApp-terraform-production"
  location = "australiaeast"
   tags = {
    Env = "Production"
  }
}

module "net" {
  source = "./modules/network"

  instances_tags = var.instances_tags
  # VNet
  virtual_network_name = "VNet"
  rg_name              = azurerm_resource_group.rg.name
  cloud_location       = azurerm_resource_group.rg.location
  virtual_network_CIDR = var.virtual_network_CIDR

  # public subnet
  public_subnet_name = var.public_subnet_name
  public_subnet_CIDR = var.public_subnet_CIDR

  # NSG public
  public_NSG_name = var.public_NSG_name

  # private subnet
  private_subnet_name = var.private_subnet_name
  private_subnet_CIDR = var.private_subnet_CIDR

  # database NSG
  private_NSG_name = var.private_NSG_name

  # publiic IP load balancer
  public_ip_to_front_LB_name = var.public_ip_to_front_LB_name

  # availabilty set
  ava_set_name = var.ava_set_name

}

# create the virtual machine
module "virtual_machines" {
  source                = "./modules/vm"
  count                 = 4
  VM_name               = "vm-${count.index}"
  rg_name               = azurerm_resource_group.rg.name
  cloud_location        = azurerm_resource_group.rg.location
  vm_size               = "Standard_B1s"
  user_name             = "omriganini"
  admin_pass            = var.admin_pass
  disable_password_auth = false
  nic_id                = [element(module.net.nic_id, count.index)]
  availability_id       = module.net.availabilty_set_id


  # OS_disk
  disk_caching              = "ReadWrite"
  disk_storage_account_type = "Standard_LRS"

  # source_image_reference
  os_source_image_publisher = "Canonical"
  os_source_image_offer     = "UbuntuServer"
  os_source_image_sku       = "18.04-LTS"
  os_source_image_version   = "latest"

}

//module "database" {
//  source = "./modules/network"
//
//  VM_name = "vm-database"
//  rg_name = azurerm_resource_group.rg.name
//  cloud_location = azurerm_resource_group.rg.location
//  vm_size = "Standard_B2ms"
//  user_name = "omriganini"
//  admin_pass = var.admin_pass
//  disable_password_auth = false
//  nic_id = module.net.database_nic_id
//  availability_id = null



//resource "azurerm_private_dns_zone" "DataBase_DNS" {
//  name                = "omri.database.azure.com"
//  resource_group_name = azurerm_resource_group.rg.name
//}
//
//resource "azurerm_private_dns_zone_virtual_network_link" "DNS_Zone_VN_Link" {
//  name                  = "VnZone.com"
//  private_dns_zone_name = azurerm_private_dns_zone.DataBase_DNS.name
//  virtual_network_id    = var.virtual_network_name
//  resource_group_name   = azurerm_resource_group.rg.name
//}
//
//

//  resource "azurerm_postgresql_flexible_server" "psql_server" {
//    name = "psql-weighttracker-prod"
//    location = azurerm_resource_group.rg.location
//    resource_group_name = azurerm_resource_group.rg.name
//    private_dns_zone_name = azurerm_private_dns_zone.DataBase_DNS.name
//    sku_name = "Standard_B1ms"
//
//    storage_mb = 32768
//    backup_retention_days = 7
//    geo_redundant_backup_enabled = false
//    auto_grow_enabled = false
//
//    administrator_login = "omriganini"
//    administrator_login_password = var.admin_pass
//    version = "13"
//    ssl_enforcement_enabled = false
//  }


  //resource "azurerm_postgresql_firewall_rule" "postgres_firewall" {
  //  name                = "psql-firewall"
  //  resource_group_name = azurerm_resource_group.rg.name
  //  server_name         = azurerm_postgresql_server.psql_server.name
  //  start_ip_address    = ""
  //  end_ip_address      = ""
  //  depends_on = [
  //    azurerm_resource_group.rg
  //  ]
  //}



//  # OS_disk
//  disk_caching = "ReadWrite"
//  disk_storage_account_type = "Standard_LRS"
//
//  # source_image_reference
//  os_source_image_publisher = "Canonical"
//  os_source_image_offer = "UbuntuServer"
//  os_source_image_sku = "18.04-LTS"
//  os_source_image_version = "latest"
//
//}
