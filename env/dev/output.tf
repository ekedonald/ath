output "load_balancer_dns" {
  description = "The DNS name of the load balancer"
  value       = module.alb.alb_dns_name
}