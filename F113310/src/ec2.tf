resource "aws_instance" "server1" {
  subnet_id = aws_subnet.topicos2020.id
  ami           = var.ec2ami
  instance_type = "t2.micro"
  security_groups = [aws_security_group.allow_tls.id, aws_security_group.allow_ssh.id]
  user_data = <<-EOF
  #!/bin/bash
  yum install httpd -y 
  service httpd start
  chkconfig httpd on
  EOF
  tags = {
      "Name" = "webserver"
  }
}

resource "aws_instance" "server2" {
  subnet_id = aws_subnet.topicos2020.id
  ami           = var.ec2ami
  instance_type = "t2.micro"
  security_groups = [aws_security_group.allow_tls.id, aws_security_group.allow_ssh.id]
  user_data = <<-EOF
  #!/bin/bash
  yum install httpd -y 
  service httpd start
  chkconfig httpd on
  EOF
  tags = {
      "Name" = "webserver"
  }
}

resource "aws_instance" "server3" {
  subnet_id = aws_subnet.topicos2020.id
  ami           = var.ec2ami
  instance_type = "t2.micro"
  security_groups = [aws_security_group.allow_tls.id, aws_security_group.allow_ssh.id]
  user_data = <<-EOF
  #!/bin/bash
  yum install httpd -y 
  service httpd start
  chkconfig httpd on
  EOF
  tags = {
      "Name" = "webserver"
  }
}