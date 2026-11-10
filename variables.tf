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

  validation {
    condition     = var.numgroupe >= 1 && var.numgroupe <= 254 && var.numgroupe == floor(var.numgroupe)
    error_message = "numgroupe doit être un entier compris entre 1 et 254."
  }
}
variable "region" {
  type    = string
  default = "swedencentral"
}
variable "taille_vm" {
  type    = string
  default = "Standard_B2ats_v2"
}
