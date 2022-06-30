output "idp_client_security_group_id" {
  value       = aws_security_group.idp_client_sg.id
  description = "IDP Client Security Group ID"
}

output "idp_server_security_group_id" {
  value       = aws_security_group.idp_server_sg.id
  description = "IDP Server Security Group ID"
}
