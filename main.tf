/**
* # aws-terraform-codecommit
*
* This module creates a code commit repository.
*
* ## Basic Usage
*
* ```
* module "codecommit_repo" {
*   source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-codecommit//?ref=v0.0.1"
*   repository_name = "MyTestRepository"
* }
* ```
*
* Full working references are available at [examples](examples)
*
 * ## Terraform 0.12 upgrade
 *
 * There should be no changes required to move from previous versions of this module to version 0.12.0 or higher.
 * ## Module variables
* 
* The following module variables changes have occurred:
* 
* #### Deprecations
* - `repository_name` - marked for deprecation as it no longer meets our style guide standards.
* 
* #### Additions
* - `name` - introduced as a replacement for `repository_name` to better align with our style guide standards.
* 
* #### Removals
* - None
*/

terraform {
  required_version = ">= 0.12"

  required_providers {
    aws = ">= 2.7.0"
  }
}

locals {
  repo_name = var.name != "" ? var.name : var.repository_name

}

resource "aws_codecommit_repository" "repo" {
  repository_name = local.repo_name
  description     = var.description
  default_branch  = var.default_branch
}

resource "aws_codecommit_trigger" "trigger_1" {
  count = var.enable_trigger_1 ? 1 : 0

  repository_name = local.repo_name

  trigger {
    branches        = var.trigger_1_branches
    custom_data     = var.trigger_1_custom_data
    destination_arn = var.trigger_1_destination_arn
    events          = var.trigger_1_events
    name            = var.trigger_1_name
  }

  depends_on = [aws_codecommit_repository.repo]
}


resource "aws_codecommit_trigger" "trigger_2" {
  count = var.enable_trigger_2 ? 1 : 0

  repository_name = local.repo_name

  trigger {
    branches        = var.trigger_2_branches
    custom_data     = var.trigger_2_custom_data
    destination_arn = var.trigger_2_destination_arn
    events          = var.trigger_2_events
    name            = var.trigger_2_name
  }

  depends_on = [aws_codecommit_repository.repo]
}

resource "aws_codecommit_trigger" "trigger_3" {
  count = var.enable_trigger_3 ? 1 : 0

  repository_name = local.repo_name

  trigger {
    branches        = var.trigger_3_branches
    custom_data     = var.trigger_3_custom_data
    destination_arn = var.trigger_3_destination_arn
    events          = var.trigger_3_events
    name            = var.trigger_3_name
  }

  depends_on = [aws_codecommit_repository.repo]
}

resource "aws_codecommit_trigger" "trigger_4" {
  count = var.enable_trigger_4 ? 1 : 0

  repository_name = local.repo_name

  trigger {
    branches        = var.trigger_4_branches
    custom_data     = var.trigger_4_custom_data
    destination_arn = var.trigger_4_destination_arn
    events          = var.trigger_4_events
    name            = var.trigger_4_name
  }

  depends_on = [aws_codecommit_repository.repo]
}

