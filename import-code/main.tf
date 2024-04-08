# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "web" {
  ami                                  = "ami-0a699202e5027c10d"
  associate_public_ip_address          = false
  availability_zone                    = "us-east-1a"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "wordpress1"
  monitoring                           = false
  placement_partition_number           = 0
  private_ip                           = "172.31.1.164"
  security_groups                      = ["launch-wizard-2"]
  source_dest_check                    = true
  subnet_id                            = "subnet-026987282f7882644"
  tags = {
    Name = "created by terraform"
  }

}
