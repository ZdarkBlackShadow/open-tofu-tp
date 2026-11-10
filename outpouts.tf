output "ip_publique" {
  value = azurerm_public_ip.lb.ip_address
}
output "site_web" {
  value = "http://${azurerm_public_ip.lb.ip_address}"
}
output "jumpbox_ip" {
  value = azurerm_public_ip.jumpbox.ip_address
}

output "ssh_web_via_jumpbox" {
  value = { for k, nic in azurerm_network_interface.web : k => "ssh -J azureuser@${azurerm_public_ip.jumpbox.ip_address} azureuser@${nic.private_ip_address}" }
}
