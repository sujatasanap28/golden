# Create a security group for the ALB
resource "aws_security_group" "my_security_group" {
  name_prefix = "my-security-group"
  vpc_id      = aws_vpc.my_vpc.id

  # Define security group rules as needed
}













