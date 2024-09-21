
resource "github_organization_settings" "this" {
  billing_email                                                = var.billing_email
  company                                                      = var.company
  blog                                                         = var.blog
  email                                                        = var.email
  twitter_username                                             = var.twitter_username
  location                                                     = var.location
  name                                                         = var.name
  description                                                  = var.description
  has_organization_projects                                    = var.has_organization_projects
  has_repository_projects                                      = var.has_repository_projects
  default_repository_permission                                = var.default_repository_permission
  members_can_create_repositories                              = var.members_can_create_repositories
  members_can_create_public_repositories                       = var.members_can_create_public_repositories
  members_can_create_private_repositories                      = var.members_can_create_private_repositories
  members_can_create_internal_repositories                     = var.members_can_create_internal_repositories
  members_can_create_pages                                     = var.members_can_create_pages
  members_can_create_public_pages                              = var.members_can_create_public_pages
  members_can_create_private_pages                             = var.members_can_create_private_pages
  members_can_fork_private_repositories                        = var.members_can_fork_private_repositories
  web_commit_signoff_required                                  = var.web_commit_signoff_required
  advanced_security_enabled_for_new_repositories               = var.advanced_security_enabled_for_new_repositories
  dependabot_alerts_enabled_for_new_repositories               = var.dependabot_alerts_enabled_for_new_repositories
  dependabot_security_updates_enabled_for_new_repositories     = var.dependabot_security_updates_enabled_for_new_repositories
  dependency_graph_enabled_for_new_repositories                = var.dependency_graph_enabled_for_new_repositories
  secret_scanning_enabled_for_new_repositories                 = var.secret_scanning_enabled_for_new_repositories
  secret_scanning_push_protection_enabled_for_new_repositories = var.secret_scanning_push_protection_enabled_for_new_repositories
}

resource "github_repository" "this" {
  name                   = ".github"
  allow_auto_merge       = true
  allow_merge_commit     = false
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  allow_update_branch    = true
  visibility             = "public"
  has_issues             = false
  has_projects           = false
  has_wiki               = false
  is_template            = false
  archive_on_destroy     = true
  auto_init              = true
  delete_branch_on_merge = true
  has_discussions        = false
  homepage_url           = var.blog
  vulnerability_alerts   = true
}

resource "github_repository_file" "this" {
  repository          = github_repository.this.name
  file                = "profile/README.md"
  commit_author       = var.commit_author
  commit_email        = var.commit_email
  commit_message      = var.commit_message
  branch              = "main"
  overwrite_on_create = false
  content             = <<EOF
# ${var.name == "" ? title(var.owner) : title(var.name)}

${var.description}
EOF
}