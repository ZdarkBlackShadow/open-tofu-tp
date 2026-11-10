output "ip_publique" {
  value = azurerm_public_ip.pip.ip_address
}
output "ssh" {
  value = "ssh azureuser@${azurerm_public_ip.pip.ip_address}"
}
output "site_web" {
  value = "http://${azurerm_public_ip.pip.ip_address}"
}