resource "azuredevops_project" "this" {
  name               = var.project_name
  description        = var.project_description
  visibility         = var.project_visibility
  version_control    = "Git"
  
  features = {
    repositories = "enabled"
    pipelines    = "enabled"   
  }
}