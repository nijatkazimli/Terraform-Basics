variable "resource_group" {
  type = string
  description = "A name of the resource group"
}

variable "resource_group_location" {
  type = string
  description = "A location of the resource group"
}

variable "service_plan" {
  type = string
  description = "A anme of the service plan"
}

variable "linux_service_plan_os" {
  type = string
  default = "Linux"
  description = "An OS of the linux service plan"
}

variable "service_plan_sku" {
  type = string
  description = "A SKU of the service plan"
}

variable "web_app_name" {
  type = string
  description = "A name of the web app"
}