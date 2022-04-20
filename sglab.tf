resource "aws_security_group" "sglab" {
  name        = "Allow tls"
  description = "Allow tls inbound traffic"
  vpc_id      = vpclab.vpc_id


  ingress = [{
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = aws_vpc.vpclab.cidr_block
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
    security_groups  = []
    self             = false

  }]
  egress = [{
    description      = "for all outgoing traffics"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
    security_groups  = []
    self             = false

  }]
  tags = {
    Name = "SecGroupLab"
  }
}

//resource "aws_security_group" "sglab" {
//     ingress = {
//       from_port  = 80
//       to_port    = 80
//       protocol   = "tcp"
//       cidr_block = ["0.0.0.0/0"]
//       type       = "http"
//    }
//}
