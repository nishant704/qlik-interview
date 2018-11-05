terraform {
  backend "s3" {
    bucket         = "terraform-new-qlik"
    key            = "global/D-EC2-initial/terraform_vpc.tfstate"
    dynamodb_table = "terraform-dynamodb-s3-qlik"
    region         = "ap-southeast-1"
    profile        = "terraform"
  }
}
