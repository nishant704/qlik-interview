resource "aws_vpc" "vpc_block" {
  cidr_block       = "${var.vpc_base_cidr_block}"
  instance_tenancy = "${var.tenancy_type}"

  tags {
    Name = "${var.vpc_name}"
  }
}
