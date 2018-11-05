data "terraform_remote_state" "s3_bucket_state" {
  backend = "s3"

  config {
    bucket         = "terraform-new-qlik"
    key            = "global/C-VPC/terraform_vpc.tfstate"
    dynamodb_table = "terraform-dynamodb-s3-qlik"
    region         = "ap-southeast-1"
    profile        = "terraform"
  }
}
