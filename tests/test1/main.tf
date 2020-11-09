provider "aws" {
  version = "~> 3.0"
  region  = "us-west-2"
}

resource "random_string" "r_string" {
  length  = 18
  upper   = false
  special = false
}

resource "random_string" "r_string_2" {
  length  = 18
  upper   = false
  special = false
}

module "sns" {
  source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-sns//?ref=v0.12.1"

  name = "${random_string.r_string_2.result}-repo-notifications"
}

module "codecommit_repo" {
  source = "../../module"

  enable_trigger_1          = true
  name                      = "${random_string.r_string.result}-MyTestRepository"
  trigger_1_custom_data     = "An event happened"
  trigger_1_destination_arn = module.sns.topic_arn
  trigger_1_events          = ["all"]
  trigger_1_name            = "${random_string.r_string.result}-trigger-1"
}
