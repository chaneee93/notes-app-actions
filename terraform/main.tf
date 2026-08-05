resource "aws_security_group" "bad_sg" {
  name = "allow-everything"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "bad_bucket" {
  bucket = "my-public-bucket"
}
