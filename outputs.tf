# https://developer.hashicorp.com/terraform/language/values/outputs
output "instance_ip_addr" {
  value = aws_instance.dev_node.public_ip
}
