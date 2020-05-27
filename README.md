# terraform-aws-guardduty-to-sns [![](https://github.com/rhythmictech/terraform-aws-guardduty-to-sns/workflows/pre-commit-check/badge.svg)](https://github.com/rhythmictech/terraform-aws-guardduty-to-sns/actions) <a href="https://twitter.com/intent/follow?screen_name=RhythmicTech"><img src="https://img.shields.io/twitter/follow/RhythmicTech?style=social&logo=RhythmicTech" alt="follow on Twitter"></a>

Route GuardDuty Alerts to SNS. Currently only configures one region.

## Example
Here's what using the module will look like
```
module "guarduty-to-sns" {
  source = "rhythmictech/terraform-aws-guardduty-to-sns
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Moniker to apply to all resources in the module | `string` | n/a | yes |
| tags | User-Defined tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| tags\_module | Tags Module in it's entirety |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## The Giants underneath this module
- pre-commit.com/
- terraform.io/
- github.com/tfutils/tfenv
- github.com/segmentio/terraform-docs
