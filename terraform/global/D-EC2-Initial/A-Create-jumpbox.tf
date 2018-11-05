module "app" {
  source = "../../modules/services/init-ec2"

  #ami_id = "${data.aws_ami.ubuntu.id}"
  key_name          = "qlik"
  sec-group         = ["${aws_security_group.app-sec-group.id}"]
  subnets           = "${data.terraform_remote_state.s3_bucket_state.subnet-public-prod-1a}"
  instance-tag      = "qlik-app-flask"
  instance-type-tag = "app-instance"
  instance-vol-size = 100
}

resource "aws_eip" "app-eip" {
  instance = "${module.app.ec2-instance}"
  vpc      = true
}
