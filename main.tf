provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

### BEGIN KeyVault
data "azurerm_key_vault" "project" {
  name                = "keyvaultproject04"
  resource_group_name = "S2-RG-project04-CORE"
}
data "azurerm_key_vault_secret" "secret0" {
  name         = "ARM-RG-Project"
  key_vault_id = data.azurerm_key_vault.project.id
}
### END KeyVault

### BEGIN MAIN
resource "azurerm_resource_group" "project" {
  name = data.azurerm_key_vault_secret.secret0.value
  location = "westeurope"
}
