resource "aws_launch_configuration" "example" {
  name_prefix     = "my-launch-config-"
  image_id        = "ami-0f34c5ae932e6f0e4"                   # Replace this with your desired AMI ID
  instance_type   = "t2.micro"                                # Replace with your desired instance type
  security_groups = [aws_security_group.my_security_group.id] # Replace with your security group ID
  key_name        = "demo12"                                  # Optional: Provide SSH key to access the instances


}
resource "aws_autoscaling_group" "example" {
  name                 = "my-autoscaling-group"
  launch_configuration = aws_launch_configuration.example.name
  vpc_zone_identifier  = [aws_subnet.private_subnet.id] # Replace with your private subnet ID
  min_size             = 1                              # Minimum number of instances
  max_size             = 3                              # Maximum number of instances
  desired_capacity     = 2                              # Desired number of instances




}
