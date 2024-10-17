# Define your variables in here.
variable "delay_seconds" {
  description = "The number of seconds to delay the execution of the Lambda function"
  type        = number
  default     = 30
}