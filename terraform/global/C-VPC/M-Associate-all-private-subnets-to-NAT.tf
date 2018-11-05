/*
Put All Private subnets under here & Associate them with the NAT
*/
# C-create-subnet-private-prod-a
resource "aws_route_table_association" "subnet-prod-1a-private_associations" {
  subnet_id      = "${aws_subnet.subnet-prod-1a-private.id}"
  route_table_id = "${aws_route_table.router-private.id}"
}

# D-create-subnet-private-prod-b
resource "aws_route_table_association" "subnet-prod-1b-private_associations" {
  subnet_id      = "${aws_subnet.subnet-prod-1b-private.id}"
  route_table_id = "${aws_route_table.router-private.id}"
}

#G-create-subnet-OpsCluster-a
resource "aws_route_table_association" "subnet-opscluster-1a" {
  subnet_id      = "${aws_subnet.subnet-opscluster-1a.id}"
  route_table_id = "${aws_route_table.router-private.id}"
}

#H-create-subnet-OpsCluster-b
resource "aws_route_table_association" "subnet-opscluster-1b" {
  subnet_id      = "${aws_subnet.subnet-opscluster-1b.id}"
  route_table_id = "${aws_route_table.router-private.id}"
}
