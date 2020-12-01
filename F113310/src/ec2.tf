#ID do recurso
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
#Informando o tipo da instancia a ser alocada e definindo um alias
resource "aws_instance" "k8s-master01" {
  #Informando o recurso
  ami           = data.aws_ami.ubuntu.id
  #Informando a instancia
  instance_type = "t2.medium"
  #Informando a VPC
  vpc_security_group_ids = [ aws_security_group.k8s-master.id ,  aws_security_group.k8s-worker.id ,  aws_security_group.allow_ssh.id ]
  #Informando a subnet
  subnet_id = aws_subnet.k8s.id
  #Definindo um nome
  tags = {
    Name = "K8s-master01"
  }
}
#Informando o tipo da instancia a ser alocada e definindo um alias
resource "aws_instance" "k8s-master02" {
  #Informando o recurso
  ami           = data.aws_ami.ubuntu.id
  #Informando a instancia
  instance_type = "t2.medium"
  #Informando a VPC
  vpc_security_group_ids = [ aws_security_group.k8s-master.id ,  aws_security_group.k8s-worker.id ,  aws_security_group.allow_ssh.id ]
  #Informando a subnet
  subnet_id = aws_subnet.k8s.id
  #Definindo um nome
  tags = {
    Name = "K8s-master02"
  }
}
#Informando o tipo da instancia a ser alocada e definindo um alias
resource "aws_instance" "k8s-worker" {
  #Informando o recurso
  ami           = data.aws_ami.ubuntu.id
  #Informando a instancia
  instance_type = "t2.medium"
  #Informando a VPC
  vpc_security_group_ids = [ aws_security_group.k8s-master.id ,  aws_security_group.k8s-worker.id ,  aws_security_group.allow_ssh.id ]
  #Informando a subnet
  subnet_id = aws_subnet.k8s.id
  #Definindo um nome
  tags = {
    Name = "K8s-worker"
  }
}