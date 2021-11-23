# aws-terraform-codecommit

This module creates a code commit repository.

## Basic Usage

```
module "codecommit_repo" {
 source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-codecommit//?ref=v0.0.1"
 repository_name = "MyTestRepository"
}
```

Full working references are available at [examples](examples)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_codecommit_repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codecommit_repository) |
| [aws_codecommit_trigger](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codecommit_trigger) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| default\_branch | The default branch for the repository | `string` | `"master"` | no |
| description | A description of the repository | `string` | `""` | no |
| enable\_trigger\_1 | Enable trigger #1 for the repository | `string` | `false` | no |
| enable\_trigger\_2 | Enable trigger #2 for the repository | `string` | `false` | no |
| enable\_trigger\_3 | Enable trigger #3 for the repository | `string` | `false` | no |
| enable\_trigger\_4 | Enable trigger #4 for the repository | `string` | `false` | no |
| repository\_name | Name of the repository | `string` | n/a | yes |
| trigger\_1\_branches | The branches that will be included in the trigger configuration. If no branches are specified, the trigger will apply to all branches. | `list` | `[]` | no |
| trigger\_1\_custom\_data | Any custom data associated with the trigger that will be included in the information sent to the target of the trigger. | `string` | `""` | no |
| trigger\_1\_destination\_arn | The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS). | `string` | `""` | no |
| trigger\_1\_events | The repository events that will cause the trigger to run actions in another service. Event types include: all, updateReference, createReference, deleteReference. | `list` | `[]` | no |
| trigger\_1\_name | Trigger #1 name | `string` | `""` | no |
| trigger\_2\_branches | The branches that will be included in the trigger configuration. If no branches are specified, the trigger will apply to all branches. | `list` | `[]` | no |
| trigger\_2\_custom\_data | Any custom data associated with the trigger that will be included in the information sent to the target of the trigger. | `string` | `""` | no |
| trigger\_2\_destination\_arn | The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS). | `string` | `""` | no |
| trigger\_2\_events | The repository events that will cause the trigger to run actions in another service. Event types include: all, updateReference, createReference, deleteReference. | `list` | `[]` | no |
| trigger\_2\_name | Trigger #2 name | `string` | `""` | no |
| trigger\_3\_branches | The branches that will be included in the trigger configuration. If no branches are specified, the trigger will apply to all branches. | `list` | `[]` | no |
| trigger\_3\_custom\_data | Any custom data associated with the trigger that will be included in the information sent to the target of the trigger. | `string` | `""` | no |
| trigger\_3\_destination\_arn | The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS). | `string` | `""` | no |
| trigger\_3\_events | The repository events that will cause the trigger to run actions in another service. Event types include: all, updateReference, createReference, deleteReference. | `list` | `[]` | no |
| trigger\_3\_name | Trigger #3 name | `string` | `""` | no |
| trigger\_4\_branches | The branches that will be included in the trigger configuration. If no branches are specified, the trigger will apply to all branches. | `list` | `[]` | no |
| trigger\_4\_custom\_data | Any custom data associated with the trigger that will be included in the information sent to the target of the trigger. | `string` | `""` | no |
| trigger\_4\_destination\_arn | The ARN of the resource that is the target for a trigger. For example, the ARN of a topic in Amazon Simple Notification Service (SNS). | `string` | `""` | no |
| trigger\_4\_events | The repository events that will cause the trigger to run actions in another service. Event types include: all, updateReference, createReference, deleteReference. | `list` | `[]` | no |
| trigger\_4\_name | Trigger #4 name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the repository |
| clone\_url\_http | The URL to use for cloning the repository over HTTPS. |
| clone\_url\_ssh | The URL to use for cloning the repository over SSH. |
| repository\_id | The ID of the repository |
