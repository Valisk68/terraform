terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      // Use version constraints to avoid unexpected updates
      version = "~> 6.0" 
      }
  }

    backend "s3" {
    bucket         = "terraform-statefile-store-vali" # Replace with your bucket name
    key            = "remote-state.tfstate" # Object key for the state file
    region         = "us-east-1"                 # Replace with your AWS region
    encrypt        = true                        # Enable encryption
    use_lockfile = true                        # Enable state locking
  }
}

// Configure the default provider
provider "aws" {
  region = "us-east-1"
}