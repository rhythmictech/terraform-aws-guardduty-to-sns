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

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| finding\_publishing\_frequency | Frequency with which to publish findings (must be one of `FIFTEEN_MINUTES`, `ONE_HOUR`, `SIX_HOURS`) | `string` | `"ONE_HOUR"` | no |
| guardduty\_enabled | Whether or not to enable the GuardDuty service | `bool` | `true` | no |
| notification\_arn | SNS Topic to send notifications to | `string` | n/a | yes |
| tags | User-Defined tags | `map(string)` | `{}` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## The Giants underneath this module
- pre-commit.com/
- terraform.io/
- github.com/tfutils/tfenv
- github.com/segmentio/terraform-docs
