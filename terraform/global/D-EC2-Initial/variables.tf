variable "aws_profile" {
  default = "terraform"
}

#########################
#AWS Specific Variables

variable "region" {
  default = "ap-southeast-1"
}

#########################
## PRODUCTION vs Stagging Toggle ##

variable "is_production" {
  default = "false"
}

#########################
#variable "ami_id" {
#  default = "ami-84e3b2eb"
#}
variable "machine_type" {
  default = "t2.large"
}

###################################################
###****** app specific settings ****####
variable "app_name" {
  default = "qlik-flask-app"
}
