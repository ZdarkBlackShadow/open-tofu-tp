output "ip_publique" {
  value = azurerm_public_ip.lb.ip_address
}
output "site_web" {
  value = "http://${azurerm_public_ip.lb.ip_address}"
}