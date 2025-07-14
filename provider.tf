terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">= 0.2.0"
    }
  }
}

provider "azuredevops" {
  # Empty block; Terraform picks up env vars
 }

/*provider "azuredevops" {
  org_service_url       = var.azure_devops_org_url
  personal_access_token = var.azure_devops_pat
}*/