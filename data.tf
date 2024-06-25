data "ami_id" "test_ami" {
  most_recent      = true
  
  filter {
    name   = "name"
    values = ["myami-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}