variable "azure_devops_org_url" {
  description = "The Azure DevOps organization URL"
  type        = string
}

variable "azure_devops_pat" {
  description = "Azure DevOps Personal Access Token"
  type        = string
  sensitive   = true
}

variable "project_name" {
  description = "Name of the Azure DevOps project"
  type        = string
}

variable "project_description" {
  description = "Description of the Azure DevOps project"
  type        = string
  default     = "Managed by Terraform"
}

variable "project_visibility" {
  description = "Visibility of the Azure DevOps project (private or public)"
  type        = string
  default     = "private"
}