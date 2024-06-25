variable "instance_type" {
  description = "Ec2 Instance Type"
  type = string
  default = "t2.micro"
  validation {
    condition = var.instance_type != "t2.nano" || var.instance_type != "t2.small"
    error_message = "Ec2 instance type does not support above types"
  }
}

variable "tenancy" {
  description = "Tenancy of instance"
  default = "default"
  type = string

validation {
  condition = can(regex("^(default|dedicated)$",var.tenancy))
  error_message = "Must be one of allowed"
}
}

variable "root_volume_size" {
    description = "desiderd volume size"
    default = "30"
  
}

variable "instance_region" {
  description = "desired region for instance"
  default = "us-east-1"

}

variable "root_volume_type" {
  description = "value"
  type = string
  default = "gp2"
}

variable "root_volume_iops" {
  description = "IOPS for volume"
  type = number
  default = 3000
}

variable "ebs_optimized" {
  description = "If the value is kept true then Ebs is optimised"
  type = bool
  default = false
}

variable "ec2_instance_profile" {
    description = "the name of the IAM instance profile"
    default = ""
    type = string
  
}

variable "instance_count" {
  description = "number of instances to launch"
  type = number
  default = 1
}

variable "ami_id" {
    description = "ami id for the instsance"
    default = "noami"
  
}