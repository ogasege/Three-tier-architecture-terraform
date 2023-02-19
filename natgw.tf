resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.myeip.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "NAT Gateway"
  }

  #An explicit dependency on the internet gateway for the VPC is added to ensure proper ordering
  depends_on = [aws_internet_gateway.gw]
}