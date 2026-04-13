provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "web_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc"
  }
}

resource "aws_subnet" "web_subnet" {
  vpc_id = aws_vpc.web_vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "subnet"
  }
}
