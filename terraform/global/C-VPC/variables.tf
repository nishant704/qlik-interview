variable "aws_profile" {
  default = "terraform"
}

variable "region" {
  default = "ap-southeast-1"
}

variable "terraform-state-bucket" {
  default = "terraform-new-qlik"
}

variable "terraform-dynamodb-table" {
  default = "terraform-dynamodb-s3-qlik"
}

################################################################################
################ Base CIDR For the VPC ##########
variable "vpc_base_cidr_block" {
  default = "172.21.60.0/22"
}

# AWS VPC Name #
variable "vpc_name" {
  type    = "string"
  default = "qilk-apps" # Name this something comman , prod + stagging
}

################ AWS VPC Tenancy ###############
variable "tenancy_type" {
  type    = "string"
  default = "default"

  #Other type inclue dedicated & host
}

################ IGW Name #####################
variable "igw_name" {
  default = "qlik-igw"
}

#*************# All Subnet Settings #*************#
############## ******************** ##############
# private Prod Subnet - HA-a
variable "private-prod-subnet-cidr-a" {
  default = "172.21.60.0/27"
}

variable "private-prod-subnet-name-a" {
  type    = "string"
  default = "private-prod-a"
}

#----------------------------------------------#
# private Prod Subnet - HA-b
variable "private-prod-subnet-cidr-b" {
  default = "172.21.60.32/27"
}

variable "private-prod-subnet-name-b" {
  type    = "string"
  default = "private-prod-b"
}

#----------------------------------------------#
data "aws_availability_zones" "available" {}

##################################################
################## PUBLIC SUBNET A & B ###########
variable "public-subnet-cidr-a" {
  default = "172.21.60.128/27"
}

variable "public-subnet-name-a" {
  type    = "string"
  default = "qlik-public-a"
}

variable "public-subnet-a-az" {
  type    = "string"
  default = "ap-southeast-1a"
}

#----------------------------------------------#
variable "public-subnet-cidr-b" {
  default = "172.21.60.160/27"
}

variable "public-subnet-name-b" {
  type    = "string"
  default = "qlik-public-b"
}

variable "public-subnet-b-az" {
  type    = "string"
  default = "ap-southeast-1b"
}

####################################################
########### Ops Subnets for tooling -a & b #########
variable "opscluster-subnet-cidr-a" {
  default = "172.21.60.192/27"
}

variable "opscluster-subnet-name-a" {
  type    = "string"
  default = "qlik-opscluster-a"
}

#-------------------------------------------------#
variable "opscluster-subnet-cidr-b" {
  default = "172.21.60.224/27"
}

variable "opscluster-subnet-name-b" {
  type    = "string"
  default = "qlik-opscluster-b"
}
