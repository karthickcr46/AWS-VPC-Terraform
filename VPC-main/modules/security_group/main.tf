resource "random_id" "this" {
  byte_length = 2
}

resource "aws_security_group" "lab2" {
  name        = "lab3-security-group-${random_id.this.hex}"
  description = "Security group for lab2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
