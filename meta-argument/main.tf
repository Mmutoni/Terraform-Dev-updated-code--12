terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
 region = "us-east-1"
}

/*

resource "aws_iam_group" "gp1" {
name = "manager"
depends_on = [ aws_iam_user.usr1 ]
lifecycle {
  prevent_destroy = false
}
}

resource "aws_iam_user" "usr1" {
name = "maureen2023"
}
*/
resource "aws_instance" "server1" {
  ami = "ami-0a699202e5027c10d"
  instance_type = "t3.small"
  subnet_id = "subnet-026987282f7882644"
  key_name = "wordpress1"
  lifecycle {
    create_before_destroy = true
  }
}