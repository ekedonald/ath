resource "cloudflare_record" "sub" {
  zone_id = var.cloudflare_zone_id
  name    = var.environment
  content = var.alb_dns_name
  type    = "CNAME"
  proxied = true
}