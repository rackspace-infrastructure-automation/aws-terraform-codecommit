provider "aws" {
  version = "~> 2.7"
  region  = "us-west-2"
}

module "sns" {
  source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-sns//?ref=v0.12.1"

  name = "repo-notifications-topic"
}

module "codecommit_repo" {
  source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-codecommit//?ref=v0.12.0"

  name                      = "MyTestRepository"
  enable_trigger_1          = true
  trigger_1_name            = "repo-trigger-1"
  trigger_1_custom_data     = "An event happened"
  trigger_1_destination_arn = module.sns.topic_arn
  trigger_1_events          = ["all"]


}
