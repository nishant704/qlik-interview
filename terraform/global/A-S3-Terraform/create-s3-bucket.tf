resource "aws_s3_bucket" "s3_bucket_block" {
  bucket = "${var.bucket_name}"
  region = "${var.region}"
  acl    = "private"
}
