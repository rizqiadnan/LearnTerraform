terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 3.27"
		}
	}
}

provider "aws" {
	region = "ap-southeast-1"
}

resource "aws_instance" "tfInstance" {
	ami				= "ami-0907c2c44ea451f84"
	instance_type	= "t2.micro"		

	tags = {
	Name 				= "TfInstance"
	ManagedBy 			= "Terraform"
	}
}
