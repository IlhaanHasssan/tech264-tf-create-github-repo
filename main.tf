provider "github" {
  token = var.github_token
}

resource "github_repository" "new_repo" {
  name        = var.repo_name
  description = "A new repo created using Terraform"
  visibility  = "public"  # You can set this to "private" if needed
  auto_init   = true      # Automatically create an initial commit with README
}
