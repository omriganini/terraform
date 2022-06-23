output "rg_name" {
  value = azurerm_linux_virtual_machine.webAppWT.resource_group_name
}

output "vm_size" {
  value = azurerm_linux_virtual_machine.webAppWT.size
}

output "cloud_location" {
  value = azurerm_linux_virtual_machine.webAppWT.location
}