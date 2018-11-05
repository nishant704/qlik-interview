resource "aws_security_group" "app-sec-group" {
  name = "App-sec-group"

  tags {
    Name = "app-flask"
  }

  description = "SSH Inbound + App port"

  #vpc_id = "${aws_vpc.vpc_block.id}"
  vpc_id = "${data.terraform_remote_state.s3_bucket_state.vpc_id}"

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
