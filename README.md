# terraform-aws-guardduty-to-sns [![](https://github.com/rhythmictech/terraform-aws-guardduty-to-sns/workflows/pre-commit-check/badge.svg)](https://github.com/rhythmictech/terraform-aws-guardduty-to-sns/actions) <a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=twitter" alt="follow on Twitter"></a>

Route GuardDuty Alerts to SNS. Currently only configures one region.

## Example
Here's what using the module will look like

```hcl
module "guardduty-to-sns" {
  source  = "rhythmictech/guardduty-to-sns/aws"
  version = "0.0.1"

  notification_arn = "arn:aws:sns:us-east-1:012345678912:NotifySlack"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_notification_arn"></a> [notification\_arn](#input\_notification\_arn) | SNS Topic to send notifications to | `string` | n/a | yes |
| <a name="input_cloudwatch_rule_enabled"></a> [cloudwatch\_rule\_enabled](#input\_cloudwatch\_rule\_enabled) | Whether or not to enable the CloudWatch Rule | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | User-Defined tags | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## The Giants underneath this module
- pre-commit.com/
- terraform.io/
- github.com/tfutils/tfenv
- github.com/segmentio/terraform-docs
