terraform {
  cloud {
    organization = "cyberbarbie"

    workspaces {
      name = "terra-casa-lotus"
    }
  }
}

# we can only have on TF block 
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.21.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}

# specifying constraints for random string generator to follow AWS bucket naming rules 
resource "random_string" "bucket_name" {
  length = 32
  lower = true
  upper = false
  numeric = false
  special = false
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result
}

output "random_bucket_name" {
  value = random_string.bucket_name.result
}


