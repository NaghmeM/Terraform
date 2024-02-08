resource "aws_instance" "testweb" {
  ami           = "ami-0014ce3e52359afbd"
  instance_type = "t3.micro"

  tags = {
    Created_by = "terraform"
  }
}