/*
  Public Subnet - HA-a
*/

resource "aws_subnet" "subnet-public-prod-1a" {
  vpc_id     = "${aws_vpc.vpc_block.id}"
  cidr_block = "${var.public-subnet-cidr-a}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"


  tags {
    Name = "${var.public-subnet-name-a}"
  }
}
