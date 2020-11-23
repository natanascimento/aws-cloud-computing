resource "aws_vpc" "topicos2020" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Topicos2020"
  }
}