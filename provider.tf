terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.0"
    }
  }
}

provider "github" {
  token = var.TF_VAR_github_token
}

