resource "aws_route_table" "router-private" {
    vpc_id = "${aws_vpc.vpc_block.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_nat_gateway.nat_gateway.id}"
    }

    tags {
        Name = "Private Subnet Route Table"
    }
}
