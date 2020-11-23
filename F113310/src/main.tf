terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3"
    }
  }
}
provider "aws" {
  profile = "souunit"
  region  = "us-east-1"
}