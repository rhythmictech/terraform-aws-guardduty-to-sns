variable "cloudwatch_rule_enabled" {
  default     = true
  description = "Whether or not to enable the CloudWatch Rule"
  type        = bool
}

variable "notification_arn" {
  description = "SNS Topic to send notifications to"
  type        = string
}

variable "tags" {
  default     = {}
  description = "User-Defined tags"
  type        = map(string)
}
