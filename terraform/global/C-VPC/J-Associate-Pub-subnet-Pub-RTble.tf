/*
Associate the Public Subnets with the public route table
*/

# Associate Public-subnet-1a
resource "aws_route_table_association" "route-public-1a" {
  subnet_id      = "${aws_subnet.subnet-public-prod-1a.id}"
  route_table_id = "${aws_route_table.router-public.id}"
}

# Associate Public-subnet-1b
resource "aws_route_table_association" "route-public-1b" {
  subnet_id      = "${aws_subnet.subnet-public-prod-1b.id}"
  route_table_id = "${aws_route_table.router-public.id}"
}
