terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      // Use version constraints to avoid unexpected updates
      version = "~> 6.0" 
    }
  }
}

// Configure the default provider
provider "aws" {
  region = "us-east-1"
}