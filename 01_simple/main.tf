// Configuration de terraform (version de providers...)
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
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
resource "aws_instance" "example" {
  ami           = "ami-0de12f76efe134f2f"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
