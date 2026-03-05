terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      // Use version constraints to avoid unexpected updates
      version = "~> 6.0" 
    }
  }
}

provider "aws" {
  region = "us-east-1"
}