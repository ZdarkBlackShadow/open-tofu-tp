variable "subscription_id" {
  type        = string
  description = "ID de l'abonnement Azure"
}
variable "binome" {
  type        = string
  description = "Nom du binôme"
}
variable "numgroupe" {
  type        = number
  description = "Numéro du groupe"
}
variable "region" {
  type    = string
  default = "swedencentral"
}
variable "taille_vm" {
  type    = string
  default = "Standard_B2ats_v2"
}
variable "ip_autorisee" {
  type        = string
  description = "IP publique autorisée en SSH vers la jumpbox"

  validation {
    condition     = can(cidrhost(var.ip_autorisee, 0))
    error_message = "IP/CIDR valide, ex: 1.2.3.4/32."
  }
}
