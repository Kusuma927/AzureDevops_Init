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

data "azuredevops_project" "project" {
  name = var.project_name
}

resource "azuredevops_git_repository" "repo" {
  project_id = data.azuredevops_project.project.id
  name       = var.repo_name
  initialization {
    init_type = "Clean"
  }
}