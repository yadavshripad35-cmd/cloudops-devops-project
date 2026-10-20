resource "aws_instance" "cloudops" {
  ami           = "ami-02167eae61967e403"
  instance_type = "t3.small"
  subnet_id     = "subnet-0dc9b067511a4c828"

  vpc_security_group_ids = [
    "sg-010b7175599c33d19"
  ]

  iam_instance_profile = "CloudOps-EC2-SSM-Role"

  root_block_device {
    volume_type = "gp3"
    volume_size = 8
    encrypted   = false
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = "Practice-Server1"
  }
}
