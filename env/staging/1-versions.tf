terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 5.0" }
  }
}

# Details to be referenced during configuration for Remote State Storage + State Locking
/*
terraform {
  backend "s3" {
    bucket         = "shopsphere-tfstate-staging"
    key            = "env/staging/root.tfstate"
    region         = "us-east-1"
    dynamodb_table = "shopsphere-staging-tf-lock"
    encrypt        = true
    profile        = "staging-sso"
  }
}
*/
