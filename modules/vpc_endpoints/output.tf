
# output "ssm_endpoint_id" {
#   value = aws_vpc_endpoint.ssm.id
# }

output "ssm_endpoint_id" {
  value = var.enable_ssm_endpoints ? aws_vpc_endpoint.ssm[0].id : null
}