# terraform-backend-bootstrap

## Overview

This repository contains the Terraform code required to bootstrap the remote
backend infrastructure for our Terraform projects. It provisions the S3 bucket
and DynamoDB table used for storing and locking Terraform state files across
all environments (dev, staging, prod).

## Purpose

- Provision S3 bucket for remote Terraform state storage.
- Provision DynamoDB table for state locking and consistency.
- Referenced as the backend in other Terraform infrastructure repositories

## Usage

1. Clone this repository:
git clone [https://github.com/shopsphere-devops/terraform-backend-bootstrap.git]
cd terraform-backend-bootstrap

2. Initialize and apply:
terraform init
terraform apply

3. Reference the backend in your main infrastructure repositories by pointing
to the created S3 bucket and DynamoDB table in their backend.tf files.

Example :

## Details to be referenced during configuration for

## Remote State Storage + State Locking

terraform {
  backend "s3" {
    bucket         = "shopsphere-tfstate-prod"
    key            = "env/prod/root.tfstate"
    region         = "us-east-1"
    dynamodb_table = "shopsphere-prod-tf-lock"
    encrypt        = true
    profile        = "prod-sso"
  }
}
