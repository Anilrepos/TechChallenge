# Virtual Network Outputs
## Virtual Network Name
output "virtual_network_name" {
  description = "Virtual Network Name"
  value = azurerm_virtual_network.vnet.name
}
## Virtual Network ID
output "virtual_network_id" {
  description = "Virtual Network ID"
  value = azurerm_virtual_network.vnet.id
}

# Subnet Outputs 
## Subnet Name 
output "web_subnet_name" {
  description = "WebTier Subnet Name"
  value = azurerm_subnet.websubnet.name
}

## Subnet ID 
output "web_subnet_id" {
  description = "WebTier Subnet ID"
  value = azurerm_subnet.websubnet.id
}

## Subnet Name 
output "app_subnet_name" {
  description = "appTier Subnet Name"
  value = azurerm_subnet.appsubnet.name
}

## Subnet ID 
output "app_subnet_id" {
  description = "appTier Subnet ID"
  value = azurerm_subnet.appsubnet.id
}

## Subnet Name 
output "db_subnet_name" {
  description = "dbTier Subnet Name"
  value = azurerm_subnet.dbsubnet.name
}

## Subnet ID 
output "db_subnet_id" {
  description = "dbTier Subnet ID"
  value = azurerm_subnet.dbsubnet.id
}

# Network Security Outputs
## Web Subnet NSG Name 
output "web_subnet_nsg_name" {
  description = "WebTier Subnet NSG Name"
  value = azurerm_network_security_group.web_subnet_nsg.name
}

## Web Subnet NSG ID 
output "web_subnet_nsg_id" {
  description = "WebTier Subnet NSG ID"
  value = azurerm_network_security_group.web_subnet_nsg.id
}
