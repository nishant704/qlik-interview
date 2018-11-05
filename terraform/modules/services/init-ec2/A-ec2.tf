resource "aws_instance" "ec2-instances" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.machine_type}"
  key_name = "${var.key_name}"
  #vpc_security_group_ids = ["${aws_security_group.jumpbox-sec-group.id}"]
  vpc_security_group_ids =  ["${var.sec-group}"]
  disable_api_termination = "${var.is_production ? true : false}"
  subnet_id = "${var.subnets}"
  tags {
    #Name = "${var.master_name}-${count.index+1}"
    Name = "${var.instance-tag}"
    Type = "${var.instance-type-tag}"
  }
  root_block_device {
    volume_size = "${var.instance-vol-size}"
    volume_type = "gp2"
  }
}
