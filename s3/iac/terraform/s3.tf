resource "aws_s3_bucket" "my-new-shiny-bucket" {
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}