/*
NAT Gateway
I   : Create a EIP for NAT gateway
II : Create NAT gateway
*/

resource "aws_eip" "nat-ip" {
  #depends_on = ["aws_internet_gateway.main"]
  vpc      = true
}


resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = "${aws_eip.nat-ip.id}"
  subnet_id     = "${aws_subnet.subnet-public-prod-1a.id}"
  tags {
  Name = "NAT Gateway"
  }
}
