
terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
    region  = "us-east-1"
    profile = "test"
}

terraform {
    backend "s3" {
        bucket         = "terrafrom-state-007"
        key            = "terraform.tfstate"
        region         = "us-east-1"
        profile      = "test"
    }
}