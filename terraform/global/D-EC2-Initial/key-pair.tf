#------------------- OpenVPN Key ---------------------------------------#
resource "aws_key_pair" "app_ec2_instances" {
  key_name   = "qlik"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDs5+VLzJaovugnTschf6pG+nZMLLaNMK+G3Uj1OOsuGgKIjbUBSx9araf0hLp4YM/YS1eW1NLBbeD4rMIDuaChzOCnjyr6kBbUAGfF6THZRZ+jnxako4s66n/YCMxciqCvseQdlyQS6JSfduLybQ4L7OK2ovrvaiP6a3wnnMtYLyVJooo1NXhOVgAIbuU2GFmvmdD3TfbpIQR0NBGWlTJ7/0XrOqdbQ8gIcs+R7mxdzBROzxFhDUvPvEjX9lxgXLJpKKUzl1ZxwA7Uj8EsWXTvNTNEa+7YUKnofdkRspm9cefSNRkiHewNeOGtr7W5jHQwyiwAuZmtAXNJb1v+l60/ nishantsingh@197nodnb19554"
}
