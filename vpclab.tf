resource "aws_vpc" "vpclab" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpclab"
  }
}