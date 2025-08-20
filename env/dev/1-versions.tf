terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 5.0" }
  }
}

terraform {
  backend "s3" {
    bucket         = "shopsphere-tfstate-dev"
    key            = "env/dev/root.tfstate"
    region         = "us-east-1"
    dynamodb_table = "shopsphere-dev-tf-lock"
    encrypt        = true
    profile        = "dev-sso"
  }
}
