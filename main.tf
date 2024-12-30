variable "ami_id" {
  description = "The AMI to use for the instance"
  
}

variable "instance_type" {
  description = "The type of instance to launch in the EC2"
  
}

variable "key_name" {
  description = "The key name to use for the instance"
  
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_ec2_instance" "example" {
    ami = "var.ami_id"
    instance_type = "var.instance_type"
    key_name = "var.key_name"
  
}