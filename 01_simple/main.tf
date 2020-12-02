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
  region  = "eu-west-2"
}

// Déclaration des ressources
resource "aws_instance" "example" {
  ami           = "ami-065fb68427940c3ae" # ID of the Amazon Linux image in eu-west-2 (named "amzn2-ami-hvm-2.0.20201126.0-x86_64-ebs")
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
