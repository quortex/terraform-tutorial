// Configuration de terraform (version de providers...)
terraform {
  required_providers {
    aws = {
      version = "~> 2.70"
    }
  }
}

// Configuration du provider AWS
provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

// Déclaration des ressources

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

resource "aws_instance" "example" {
  ami           = "ami-0de12f76efe134f2f"
  instance_type = "t2.micro"

  subnet_id     = aws_subnet.main.id // utilisation d'un attribut de sortie d'une autre ressource
  
  tags = {
    Name = "HelloWorld-VM"
  }
}
