provider "aws" {
  version = "~> 1.2"
  region  = "us-west-2"
}

module "sns" {
  source     = "git@github.com:rackspace-infrastructure-automation/aws-terraform-sns//?ref=v0.0.2"
  topic_name = "repo-notifications-topic"
}

module "codecommit_repo" {
  source          = "git@github.com:rackspace-infrastructure-automation/aws-terraform-codecommit//?ref=v0.0.1"
  repository_name = "MyTestRepository"

  enable_trigger_1          = true
  trigger_1_name            = "repo-trigger-1"
  trigger_1_events          = ["all"]
  trigger_1_destination_arn = "${module.sns.topic_arn}"
  trigger_1_custom_data     = "An event happened"
}
