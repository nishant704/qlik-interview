output "vpc_id" {
  value = "${aws_vpc.vpc_block.id}"
}

output "igw_id" {
  value = "${aws_internet_gateway.igw_block.id}"
}

output "subnet-prod-1a-private" {
  value = "${aws_subnet.subnet-prod-1a-private.id}"
}

output "subnet-prod-1b-private" {
  value = "${aws_subnet.subnet-prod-1b-private.id}"
}

output "subnet-public-prod-1a" {
  value = "${aws_subnet.subnet-public-prod-1a.id}"
}

output "subnet-public-prod-1b" {
  value = "${aws_subnet.subnet-public-prod-1b.id}"
}

output "subnet-opscluster-1a" {
  value = "${aws_subnet.subnet-opscluster-1a.id}"
}

output "subnet-opscluster-1b" {
  value = "${aws_subnet.subnet-opscluster-1b.id}"
}

output "Route-table-public" {
  value = "${aws_route_table.router-public.id}"
}

output "EIP-for-nat-gateway" {
  value = "${aws_eip.nat-ip.public_ip}"
}

output "NAT-Gateway-ID" {
  value = "${aws_nat_gateway.nat_gateway.id }"
}
