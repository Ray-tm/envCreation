variable "repo_name" {
  type        = string
  default = "Ray-tm/envCreation" 
  description = "name of the repository"
}

variable "TF_VAR_github_token" {
  type        = string
  
  description = "github token"
}