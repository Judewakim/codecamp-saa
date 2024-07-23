
resource "aws_s3_bucket" "my-new-shiny-bucket" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}