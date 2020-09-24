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

// Utilisation d'un module défini dans un dossier local
module "network" {
  source = "../module-network" // habituellement un module sur le registry plutôt que local

  name           = "MyNetwork"
  vpc_cidr_block = "10.0.0.0/16"
}

// Déclaration des ressources
resource "aws_instance" "example" {
  ami           = "ami-0de12f76efe134f2f"
  instance_type = "t2.micro"

  subnet_id = module.network.subnet_id // utilisation d'un attribut de sortie du module

  tags = {
    Name = "HelloWorld-VM"
  }
}
