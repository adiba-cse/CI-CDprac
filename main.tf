terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.95.0"
    }
  }

  backend "s3" {
    bucket               = "adfhhjkjkkkllollll"
    key                  = "state/terraform.tfstate"
    region               = "us-east-1"
    workspace_key_prefix = "default"
    encrypt              = true
  }
}
# create bucket with versioning in the portal and write its name here
provider "aws" {
  region = "us-east-1"
  # Configuration options
}


resource "aws_instance" "expcount" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"


}