resource "aws_cloudwatch_event_rule" "this" {
  name        = "guardduty-events"
  description = "GuardDutyEvent"
  is_enabled  = var.cloudwatch_rule_enabled
  tags        = var.tags

  event_pattern = <<PATTERN
{
  "source": [
    "aws.guardduty"
  ],
  "detail-type": [
    "GuardDuty Finding"
  ]
}
PATTERN
}

resource "aws_cloudwatch_event_target" "this" {
  rule      = aws_cloudwatch_event_rule.this.name
  target_id = "SendToSNS"
  arn       = var.notification_arn
}
