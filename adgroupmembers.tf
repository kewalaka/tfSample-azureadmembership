# Note this requires the Terraform SP to have the Graph API permission Group.Read.All
data "azuread_group" "group" {
  display_name = var.azure_ad_test_group
}

# Note this requires the Terraform SP to have the Graph API permission User.Read.All
data "azuread_user" "user" {
  user_principal_name = var.azure_ad_test_user
}

# The docs say:

# When authenticated with a service principal, this resource requires one of the following application roles: 
# Group.ReadWrite.All or Directory.ReadWrite.All

# comment out to test removal
resource "azuread_group_member" "membership_test" {
  group_object_id  = data.azuread_group.group.id
  member_object_id = data.azuread_user.user.id
}