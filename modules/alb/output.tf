output "alb_tg_arn" {
    value = aws_lb_target_group.alb_tg.arn
}

output "alb_dns_name" {
  description = "The DNS name of the application load balancer"
  value       = aws_lb.alb.dns_name
}