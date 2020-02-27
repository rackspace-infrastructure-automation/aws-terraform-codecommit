/**
 * # aws-terraform-codecommit
 *
 *This module creates a code commit repository.
 *
 *## Basic Usage
 *
 *```
module "codecommit_repo" {
  source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-codecommit//?ref=v0.0.1"
  repository_name = "MyTestRepository"
}
 *```
 *
 * Full working references are available at [examples](examples)
 */

 terraform {
  required_version = ">= 0.12"

    required_providers {
    aws = ">= 2.7.0"
  }
}

resource "aws_codecommit_repository" "repo" {
  repository_name = var.repository_name
  description     = var.description
  default_branch  = var.default_branch
}

resource "aws_codecommit_trigger" "trigger_1" {
  count           = var.enable_trigger_1 ? 1 : 0
  depends_on      = [aws_codecommit_repository.repo]
  repository_name = var.repository_name

  trigger {
    name            = var.trigger_1_name
    events          = var.trigger_1_events
    destination_arn = var.trigger_1_destination_arn
    custom_data     = var.trigger_1_custom_data
    branches        = var.trigger_1_branches
  }
}

resource "aws_codecommit_trigger" "trigger_2" {
  count           = var.enable_trigger_2 ? 1 : 0
  depends_on      = [aws_codecommit_repository.repo]
  repository_name = var.repository_name

  trigger {
    name            = var.trigger_2_name
    events          = var.trigger_2_events
    destination_arn = var.trigger_2_destination_arn
    custom_data     = var.trigger_2_custom_data
    branches        = var.trigger_2_branches
  }
}

resource "aws_codecommit_trigger" "trigger_3" {
  count           = var.enable_trigger_3 ? 1 : 0
  depends_on      = [aws_codecommit_repository.repo]
  repository_name = var.repository_name

  trigger {
    name            = var.trigger_3_name
    events          = var.trigger_3_events
    destination_arn = var.trigger_3_destination_arn
    custom_data     = var.trigger_3_custom_data
    branches        = var.trigger_3_branches
  }
}

resource "aws_codecommit_trigger" "trigger_4" {
  count           = var.enable_trigger_4 ? 1 : 0
  depends_on      = [aws_codecommit_repository.repo]
  repository_name = var.repository_name

  trigger {
    name            = var.trigger_4_name
    events          = var.trigger_4_events
    destination_arn = var.trigger_4_destination_arn
    custom_data     = var.trigger_4_custom_data
    branches        = var.trigger_4_branches
  }
}

