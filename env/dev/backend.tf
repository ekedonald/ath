# terraform {
#   backend "s3" {
#     bucket = "${var.project_name}-terraform-state"
#     key    = "${var.environment}/terraform.tfstate"
#     region = var.environment
#   }
# }
