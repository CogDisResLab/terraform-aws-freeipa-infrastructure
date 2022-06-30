resource "aws_security_group_rule" "ldap_access_ingress_server" {
  description              = "Allow inbound LDAP access to the IDP server"
  from_port                = 389
  to_port                  = 389
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "ldaps_access_ingress_server" {
  description              = "Allow inbound LDAPS access to the IDP server"
  from_port                = 636
  to_port                  = 636
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "ingress"
}


resource "aws_security_group_rule" "kerberos_access_tcp_ingress_server" {
  description              = "Allow inbound Kerberos access to the IDP server over TCP"
  from_port                = 88
  to_port                  = 88
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "kerberos_access_udp_ingress_server" {
  description              = "Allow inbound Kerberos access to the IDP server over UDP"
  from_port                = 88
  to_port                  = 88
  protocol                 = "udp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "kpasswd_access_tcp_ingress_server" {
  description              = "Allow inbound kpasswd access to the IDP server over TCP"
  from_port                = 464
  to_port                  = 464
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "kpasswd_access_udp_ingress_server" {
  description              = "Allow inbound kpasswd access to the IDP server over UDP"
  from_port                = 464
  to_port                  = 464
  protocol                 = "udp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "ingress"
}

resource "aws_security_group_rule" "ldap_access_egress_server" {
  description              = "Allow outbound LDAP access to the IDP server"
  from_port                = 389
  to_port                  = 389
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "ldaps_access_egress_server" {
  description              = "Allow outbound LDAPS access to the IDP server"
  from_port                = 636
  to_port                  = 636
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "egress"
}


resource "aws_security_group_rule" "kerberos_access_tcp_egress_server" {
  description              = "Allow outbound Kerberos access to the IDP server over TCP"
  from_port                = 88
  to_port                  = 88
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "kerberos_access_udp_egress_server" {
  description              = "Allow outbound Kerberos access to the IDP server over UDP"
  from_port                = 88
  to_port                  = 88
  protocol                 = "udp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "kpasswd_access_tcp_egress_server" {
  description              = "Allow outbound kpasswd access to the IDP server over TCP"
  from_port                = 464
  to_port                  = 464
  protocol                 = "tcp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "kpasswd_access_udp_egress_server" {
  description              = "Allow outbound kpasswd access to the IDP server over UDP"
  from_port                = 464
  to_port                  = 464
  protocol                 = "udp"
  security_group_id        = aws_security_group.idp_server_sg.id
  source_security_group_id = aws_security_group.idp_client_sg.id
  type                     = "egress"
}

resource "aws_security_group_rule" "inbound_http_access_server" {
  description       = "Allow inbound HTTPS access to the IDP server"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-ingress-sgr
  ipv6_cidr_blocks  = ["::/0"]
  type              = "ingress"
  security_group_id = aws_security_group.idp_server_sg.id
}

resource "aws_security_group_rule" "inbound_https_access_server" {
  description       = "Allow inbound HTTPS access to the IDP server"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-ingress-sgr
  ipv6_cidr_blocks  = ["::/0"]      #tfsec:ignore:aws-vpc-no-public-ingress-sgr
  security_group_id = aws_security_group.idp_server_sg.id
  type              = "ingress"
}

resource "aws_security_group_rule" "outbound_http_access_server" {
  description       = "Allow outbound HTTPS access to the IDP server"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-egress-sgr
  ipv6_cidr_blocks  = ["::/0"]      #tfsec:ignore:aws-vpc-no-public-egress-sgr
  security_group_id = aws_security_group.idp_server_sg.id
  type              = "egress"
}

resource "aws_security_group_rule" "outbound_https_access_server" {
  description       = "Allow outbound HTTPS access to the IDP server"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-egress-sgr
  ipv6_cidr_blocks  = ["::/0"]      #tfsec:ignore:aws-vpc-no-public-egress-sgr
  security_group_id = aws_security_group.idp_server_sg.id
  type              = "egress"
}
