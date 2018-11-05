variable "instance-tag" {
  default = "xyz"
}

variable "key_name" {
  default = "terraform"
}

variable "instance-vol-size" {
  default = "10"
}

variable "ami_id" {
  default = "ami-7c412f13"
}

variable "machine_type" {
  default = "t2.large"
}

variable "instance-type-tag" {
  default = "xyz"
}

variable "is_production" {
  default = "false"
}

variable "sec-group" {
  default = ["sg-test"]
  type = "list"
}

variable "subnets" {
  default = "xyz"
}
