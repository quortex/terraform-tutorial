resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "HelloWorld-MainVPC"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id // utilisation d'un attribut de sortie d'une autre ressource
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "HelloWorld-MainSubnet"
  }
}