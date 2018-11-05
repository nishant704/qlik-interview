output "ec2-instance" {
  value = "${aws_instance.ec2-instances.id}"
}



output "ubuntu-ami" {
        value = "${data.aws_ami.ubuntu.id}"
}
