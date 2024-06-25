provider "aws" {
  region = var.instance_region
  
}

resource "aws_instance" "main" {
  count = var.instance_count
  ami = var.ami_id
  instance_type = var.instance_type
  tenancy = var.tenancy

root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
    encrypted = true
    #iops = var.root_volume_iops
    
  }

  ebs_optimized = var.ebs_optimized
  monitoring = true
  iam_instance_profile = var.ec2_instance_profile
  subnet_id = data.subnet_id

}
