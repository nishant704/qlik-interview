output "app-instance-eip" {
  value = "${aws_eip.app-eip.public_ip}"
}

output "app-sec-group-name" {
  value = "${aws_security_group.app-sec-group.name}"
}

output "app-sec-group-id" {
  value = "${aws_security_group.app-sec-group.id}"
}
