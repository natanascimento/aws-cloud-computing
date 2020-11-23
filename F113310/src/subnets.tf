resource "aws_subnet" "topicos2020" {
  vpc_id     = aws_vpc.topicos2020.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Topicos2020"
  }
}