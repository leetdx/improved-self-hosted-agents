resource "azurerm_container_group" "ci" {
  name                = var.group_name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = var.ip_address_type
  dns_name_label      = "dns-label-${var.group_name}"
  os_type             = var.os_type

  container {
    name                         = var.container_name
    image                        = var.container_image
    cpu                          = var.cpu
    memory                       = var.memory
    environment_variables        = var.environment_variables
    secure_environment_variables = var.secure_environment_variables

    ports {
      port     = var.port
      protocol = var.protocol
    }
  }

  image_registry_credential {
    username = var.cr_username
    password = var.cr_password
    server   = var.cr_server
  }

  tags = var.tags
}