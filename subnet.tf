#Public subnets

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.cidr[count.index]
  availability_zone = var.az[count.index]
  count = 2 

  tags = {
    Name = "public-subnet"
  }
}

#Private Subnet
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-2b"
  

  tags = {
    Name = "private-subnet"
  }
}

data "aws_subnets" "sid" {
  filter{
    name = "vpc-id"
    values = [aws_vpc.main.id]
  }
  tags = {
    Tier = "Public"
  }

}