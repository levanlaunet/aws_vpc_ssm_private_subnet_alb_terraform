variable "name" {}
variable "vpc_id" {}
variable "subnet_ids" {
  type = list(string)
}
variable "instance_id" {}
variable "security_group_ids" {
  type = list(string)
}
