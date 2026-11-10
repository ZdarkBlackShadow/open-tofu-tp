variable "subscription_id" {
  type        = string
  description = "ID de l'abonnement Azure"
}
variable "nom" {
  type        = string
  description = "Votre nom"
}
variable "region" {
  type    = string
  default = "swedencentral"
}
variable "taille_vm" {
  type    = string
  default = "Standard_B2ats_v2"
}
