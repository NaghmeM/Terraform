# resource "aws_instance" "testweb" {
#   ami           = "ami-0014ce3e52359afbd"
#   instance_type = "t3.micro"

#   tags = {
#     Created_by = "terraform"
#   }
# }

resource "aws_vpc" "IT-INFRA" {
  
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "IT Infra"
  }
}
resource "aws_subnet" "VAS_subnet" {
  vpc_id     = aws_vpc.IT-INFRA.id
  cidr_block = "172.16.10.0/24"

  tags = {
    Name = "VAS"
  }
}