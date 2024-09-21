variable "billing_email" {
  type        = string
  description = "The billing email address for the organization."
}

variable "owner" {
  type        = string
  description = "The owner of the organization."
}

variable "company" {
  type        = string
  description = "The company name for the organization."
  default     = null
}

variable "blog" {
  type        = string
  description = "The blog URL for the organization."
  default     = null
}

variable "email" {
  type        = string
  description = "The email for the organization."
  default     = ""
}

variable "twitter_username" {
  type        = string
  description = "The Twitter username for the organization."
  default     = ""
}

variable "location" {
  type        = string
  description = "The location for the organization."
  default     = ""
}

variable "name" {
  type        = string
  description = "The name for the organization."
  default     = ""
}

variable "description" {
  type        = string
  description = "The description for the organization."
  default     = ""
}

variable "has_organization_projects" {
  type        = bool
  description = "Whether organization projects are enabled."
  default     = true
}

variable "has_repository_projects" {
  type        = bool
  description = "Whether repository projects are enabled."
  default     = true
}

variable "default_repository_permission" {
  type        = string
  description = "The default permission for repositories."
  default     = "read"
}

variable "members_can_create_repositories" {
  type        = bool
  description = "Whether members can create repositories."
  default     = true
}

variable "members_can_create_public_repositories" {
  type        = bool
  description = "Whether members can create public repositories."
  default     = true
}

variable "members_can_create_private_repositories" {
  type        = bool
  description = "Whether members can create private repositories."
  default     = true
}

variable "members_can_create_internal_repositories" {
  type        = bool
  description = "Whether members can create internal repositories."
  default     = true
}

variable "members_can_create_pages" {
  type        = bool
  description = "Whether members can create pages."
  default     = true
}

variable "members_can_create_public_pages" {
  type        = bool
  description = "Whether members can create public pages."
  default     = true
}

variable "members_can_create_private_pages" {
  type        = bool
  description = "Whether members can create private pages."
  default     = true
}

variable "members_can_fork_private_repositories" {
  type        = bool
  description = "Whether members can fork private repositories."
  default     = true
}

variable "web_commit_signoff_required" {
  type        = bool
  description = "Whether web commit signoff is required."
  default     = false
}

variable "advanced_security_enabled_for_new_repositories" {
  type        = bool
  description = "Whether advanced security is enabled for new repositories."
  default     = false
}

variable "dependabot_alerts_enabled_for_new_repositories" {
  type        = bool
  description = "Whether Dependabot alerts are enabled for new repositories."
  default     = false
}

variable "dependabot_security_updates_enabled_for_new_repositories" {
  type        = bool
  description = "Whether Dependabot security updates are enabled for new repositories."
  default     = false
}

variable "dependency_graph_enabled_for_new_repositories" {
  type        = bool
  description = "Whether dependency graph is enabled for new repositories."
  default     = false
}

variable "secret_scanning_enabled_for_new_repositories" {
  type        = bool
  description = "Whether secret scanning is enabled for new repositories."
  default     = false
}

variable "secret_scanning_push_protection_enabled_for_new_repositories" {
  type        = bool
  description = "Whether secret scanning push protection is enabled for new repositories."
  default     = false
}

variable "commit_author" {
  type        = string
  description = "The author of the commit."
}

variable "commit_email" {
  type        = string
  description = "The email of the commit author."
}

variable "commit_message" {
  type        = string
  description = "The message of the initial commit."
  default     = "Initial commit"
}