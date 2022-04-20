resource "aws_subnet" "snlab1" {
  vpc_id                  = vpclab.vpc_id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "sa-east-1a"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "snlab2" {
  vpc_id                  = vpclab.vpc_id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "sa-east-1b"
  map_public_ip_on_launch = false

}