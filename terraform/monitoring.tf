resource "aws_cloudwatch_metric_alarm" "web_cpu_alarm" {
  alarm_name          = "${var.project_name}-web-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70

  dimensions = {
    InstanceId = aws_instance.web.id
  }
}
