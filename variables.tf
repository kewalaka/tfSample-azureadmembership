variable "resource_group_name" {
  description = "The resource group into which components are deployed"
}

variable "azure_ad_test_group" {
  description = "The Azure AD group to use to test membership changes."
}

variable "azure_ad_test_user" {
  description = "The user to add/remove from the test group."
}