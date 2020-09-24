resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id // utilisation d'un attribut de sortie d'une autre ressource
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = var.name
  }
}
