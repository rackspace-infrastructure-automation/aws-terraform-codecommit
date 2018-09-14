provider "aws" {
  version = "~> 1.2"
  region  = "us-west-2"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "((GENERATED_BUCKET_NAME))"
    region  = "us-west-2"
    key     = "terraform.tfstate"
  }
}

resource "random_string" "r_string" {
  length  = 18
  upper   = false
  special = false
}

module "sns" {
  source     = "git@github.com:rackspace-infrastructure-automation/aws-terraform-sns//?ref=v0.0.2"
  topic_name = "${random_string.r_string.result}-repo-notifications"
}

module "codecommit_repo" {
  source          = "../../module"
  repository_name = "${random_string.r_string.result}-MyTestRepository"

  enable_trigger_1          = true
  trigger_1_name            = "${random_string.r_string.result}-trigger-1"
  trigger_1_events          = ["all"]
  trigger_1_destination_arn = "${module.sns.topic_arn}"
  trigger_1_custom_data     = "An event happened"
}