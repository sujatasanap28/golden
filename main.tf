provider "aws" {
  region = "us-east-1" # Change this to your desired AWS region
}




resource "aws_instance" "example" {
  ami           = "ami-0f34c5ae932e6f0e4" # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Replace with your desired instance type
  key_name      = "demo12"
}

