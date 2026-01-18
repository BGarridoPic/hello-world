terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2" 
  profile = "terraform-brian"
}

resource "aws_s3_bucket" "mi_bucket_automatizado" {
    
  bucket = "mi-bucket-hola-mundo" 
  
  tags = {
    Name        = "Hola Mundo Bucket"
    Environment = "Dev"
  }
}