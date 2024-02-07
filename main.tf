resource "aws_instance" "test_web" {
  ami           = ami-0c24ee2a1e3b9df45
  instance_type = "t2.micro"

  tags = {
    Created_by = "terraform"
  }
}