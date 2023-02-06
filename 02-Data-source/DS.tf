#data "aws_ami" "example" {
#  executable_users = ["self"]
#  most_recent      = true
#  name_regex       = "Centos-8-DevOps-Practice"
#  owners           = ["973714476881"]
#
#
#}
#
#output "ami" {
#  value = data.aws_ami.example
#}

data "aws_ami" "centos8" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

output "ami" {
  value = data.aws_ami.centos8
}

data "aws_instance" "foo" {
  instance_id = "i-0df3550a5e7cd4c37"
}

output "public_ip" {
  value = data.aws_instance.foo.public_ip
}