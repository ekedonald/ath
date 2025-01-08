output "backend_sg_id" {
  value = aws_security_group.backend.id
}

output "rds_sg_id" {
    value = aws_security_group.rds.id
}

output "elasticache_sg_id" {
    value = aws_security_group.elasticache.id
}

output "web_sg_id" {
    value = aws_security_group.web_service.id
}

output "alb_sg_id" {
    value = aws_security_group.alb.id
}