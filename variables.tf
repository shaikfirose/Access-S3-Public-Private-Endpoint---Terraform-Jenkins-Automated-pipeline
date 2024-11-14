# Variables file

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "172.16.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "172.16.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = "172.16.1.0/24"
}

variable "ami" {
  description = "AMI ID for EC2 instances"
  default     = "ami-08bf489a05e916bbd"  # Replace with valid AMI
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "Availability Zone for subnets"
  default     = "us-east-1a"  # Adjust based on your region
}

variable "s3_bucket_name" {
  description = "S3 Bucket Name"
  default     = "firose3245"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}
