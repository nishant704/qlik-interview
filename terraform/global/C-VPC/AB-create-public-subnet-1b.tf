/*
  Public Subnet - HA-a
*/

resource "aws_subnet" "subnet-public-prod-1b" {
  vpc_id     = "${aws_vpc.vpc_block.id}"
  cidr_block = "${var.public-subnet-cidr-b}"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"

  tags {
    Name = "${var.public-subnet-name-b}"
  }
}
