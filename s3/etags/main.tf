terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.60.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "example" {
  #if you dont enter a bucket name terraform will randomly generate one for you
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.example.id
  key    = "myfile.txt"
  source = "myfile.txt"

  #an etag will track changes made to myfile.txt. Without an etag terraform has no idea what the actual contents of myfile.txt is
  #bc remember terraform is meant for infrastructure not for data points like bucket objects
  etag = filemd5("myfile.txt")
}