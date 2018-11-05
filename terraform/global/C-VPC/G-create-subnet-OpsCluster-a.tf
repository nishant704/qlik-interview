/*
  Ops Subnet - HA-a
*/

resource "aws_subnet" "subnet-opscluster-1a" {
  vpc_id     = "${aws_vpc.vpc_block.id}"
  cidr_block = "${var.opscluster-subnet-cidr-a}"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"

  tags {
    Name = "${var.opscluster-subnet-name-a}"
  }
}
