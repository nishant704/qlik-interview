resource "aws_internet_gateway" "igw_block" {
  vpc_id = "${aws_vpc.vpc_block.id}"
  tags {
    Name = "${var.igw_name}"
  }
}
