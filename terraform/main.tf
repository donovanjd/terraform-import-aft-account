module "import-aft-account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "donovandurand+aftprod@gmail.com"
    AccountName               = "aft-prod"
    ManagedOrganizationalUnit = "AVX AFT"
    SSOUserEmail              = "donovandurand@gmail.com"
    SSOUserFirstName          = "Donovan"
    SSOUserLastName           = "Durand"
  }

   account_tags = {
    "controltower" = "aft-prod"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

}