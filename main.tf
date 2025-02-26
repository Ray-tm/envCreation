data "github_user" "current" {
  username = "Ray-tm"
}

# resource "github_repository" "my_repo" {
#   name        = "envCreation"
#   description = "My code repository"
# }

resource "github_repository_environment" "dev" {
  environment         = "dev"
  repository          = "Ray-tm/envCreation"
#   prevent_self_review = true
#   deployment_branch_policy {
#     protected_branches     = true
#     custom_branch_policies = false
#   }
}

resource "github_repository_environment" "pprod" {
  environment         = "pprod"
  repository          = "envCreation"
#   prevent_self_review = true
#   deployment_branch_policy {
#     protected_branches     = true
#     custom_branch_policies = false
#   }
}
