resource "aws_security_group" "allow_tls" {
  security_group_name       = "allow_tls"
  description               = "Allow inbound TLS traffic"
  vpc_id                    =  aws_vpc.main.id
  

  type              = "ingress"
  description       = "TLS from VPC"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  
  
  type              = "ingress"
  description       = "TLS from VPC"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]


  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]

 tags = {
    Name = "allow_tls"
  }
  
}