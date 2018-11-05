provider "aws" {
  region     = "${var.region}"
  profile    = "${var.aws_profile}" #.aws/credentials profile
}
