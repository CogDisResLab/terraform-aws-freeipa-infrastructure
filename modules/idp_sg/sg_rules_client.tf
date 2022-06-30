
resource "aws_security_group_rule" "ldap_access_ingress_client" {
  description              = "Allow inbound LDAP traffic from the IDP server"
  from_port                = 389
  to_port                  = 389
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "ldaps_access_ingress_client" {
  description              = "Allow inbound LDAPS traffic from the IDP server"
  from_port                = 636
  to_port                  = 636
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "ingress"
}


resource "aws_security_group_rule" "kerberos_access_tcp_ingress_client" {
  description              = "Allow inbound Kerberos traffic from the IDP server over TCP"
  from_port                = 88
  to_port                  = 88
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "kerberos_access_udp_ingress_client" {
  description              = "Allow inbound Kerberos traffic from the IDP server over UDP"
  from_port                = 88
  to_port                  = 88
  protocol                 = "udp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "kpasswd_access_tcp_ingress_client" {
  description              = "Allow inbound kpasswd traffic from the IDP server over TCP"
  from_port                = 464
  to_port                  = 464
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "kpasswd_access_udp_ingress_client" {
  description              = "Allow inbound kpasswd traffic from the IDP server over UDP"
  from_port                = 464
  to_port                  = 464
  protocol                 = "udp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "ldap_access_egress_client" {
  description              = "Allow outbound LDAP traffic to the IDP server"
  from_port                = 389
  to_port                  = 389
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "ldaps_access_egress_client" {
  description              = "Allow outbound LDAPS traffic to the IDP server"
  from_port                = 636
  to_port                  = 636
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "egress"
}


resource "aws_security_group_rule" "kerberos_access_tcp_egress_client" {
  description              = "Allow outbound Kerberos traffic to the IDP server over TCP"
  from_port                = 88
  to_port                  = 88
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "kerberos_access_udp_egress_client" {
  description              = "Allow outbound Kerberos traffic to the IDP server over UDP"
  from_port                = 88
  to_port                  = 88
  protocol                 = "udp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "kpasswd_access_tcp_egress_client" {
  description              = "Allow outbound kpasswd traffic to the IDP server over TCP"
  from_port                = 464
  to_port                  = 464
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "kpasswd_access_udp_egress_client" {
  description              = "Allow outbound kpasswd traffic to the IDP server over UDP"
  from_port                = 464
  to_port                  = 464
  protocol                 = "udp"
  security_group_id        = aws_security_group.idp_client_sg.id
  source_security_group_id = aws_security_group.idp_server_sg.id
  type                     = "egress"
}
