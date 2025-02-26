# data "github_user" "current" {
#   username = "Ray-tm"
# }

data "github_repository" "my_repo" {
  full_name = var.repo_name
}

resource "github_repository_environment" "dev" {
  environment         = "dev"
  repository          = data.github_repository.my_repo.name
#   prevent_self_review = true
#   deployment_branch_policy {
#     protected_branches     = true
#     custom_branch_policies = false
#   }
}

resource "github_repository_environment" "pprod-env" {
  environment         = "pprod"
  repository          = data.github_repository.my_repo.name
#   prevent_self_review = true
#   deployment_branch_policy {
#     protected_branches     = true
#     custom_branch_policies = false
#   }
}
