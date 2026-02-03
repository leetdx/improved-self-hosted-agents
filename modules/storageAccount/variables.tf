variable "name" {
  type        = string
  description = "Name of Storage Account"
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group of Storage Account"
  default     = null
}

variable "location" {
  type        = string
  description = "Location of Storage Account"
  default     = "southeastasia"
}

variable "account_kind" {
  type        = string
  description = "Account kind of Storage Account"
  default     = "StorageV2"
}

variable "account_tier" {
  type        = string
  description = "Account tier of Storage Account"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Account Replication Type of Storage Account"
  default     = "LRS"
}

variable "tags" {
  type        = map(any)
  description = "Tags of Storage Account"
  default     = null
}
