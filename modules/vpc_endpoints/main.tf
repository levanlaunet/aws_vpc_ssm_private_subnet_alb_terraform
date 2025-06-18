
resource "aws_vpc_endpoint" "ssm" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${var.region}.ssm"
  subnet_ids        = var.private_subnet_ids
  vpc_endpoint_type = "Interface"
  security_group_ids = var.security_group_ids
  private_dns_enabled = true
  count               = var.enable_ssm_endpoints ? 1 : 0
}

resource "aws_vpc_endpoint" "ec2messages" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${var.region}.ec2messages"
  subnet_ids        = var.private_subnet_ids
  vpc_endpoint_type = "Interface"
  security_group_ids = var.security_group_ids
  private_dns_enabled = true
  count               = var.enable_ssm_endpoints ? 1 : 0
}

resource "aws_vpc_endpoint" "ssmmessages" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.${var.region}.ssmmessages"
  subnet_ids        = var.private_subnet_ids
  vpc_endpoint_type = "Interface"
  security_group_ids = var.security_group_ids
  private_dns_enabled = true
  count               = var.enable_ssm_endpoints ? 1 : 0
}