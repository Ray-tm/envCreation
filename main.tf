data "github_user" "current" {
  username = "Ray-tm"
}

# resource "github_repository" "my_repo" {
#   name        = "envCreation"
#   description = "My code repository"
# }

resource "github_repository_environment" "dev-env" {
  environment         = "dev"
  repository          = var.my_repo
  prevent_self_review = true
  reviewers {
    users = 1
  }
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}

resource "github_repository_environment" "pprod-env" {
  environment         = "pprod"
  repository          = var.my_repo
  prevent_self_review = true
  reviewers {
    users = 1
  }
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}
