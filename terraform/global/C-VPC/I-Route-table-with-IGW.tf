/*
  Create a Route Table with route to IGW (PUBLIC)
*/

resource "aws_route_table" "router-public" {
    vpc_id = "${aws_vpc.vpc_block.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw_block.id}"
    }

    tags {
        Name = "Public Subnet Route Table"
    }
}
