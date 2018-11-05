resource "aws_subnet" "subnet-prod-1a-private" {
  vpc_id            = "${aws_vpc.vpc_block.id}"
  cidr_block        = "${var.private-prod-subnet-cidr-a}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"

  tags {
    Name = "${var.private-prod-subnet-name-a}"
  }
}
