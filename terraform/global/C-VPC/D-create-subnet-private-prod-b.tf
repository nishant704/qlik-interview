resource "aws_subnet" "subnet-prod-1b-private" {
  vpc_id            = "${aws_vpc.vpc_block.id}"
  cidr_block        = "${var.private-prod-subnet-cidr-b}"
  availability_zone = "${data.aws_availability_zones.available.names[1]}"

  tags {
    Name = "${var.private-prod-subnet-name-b}"
  }
}
