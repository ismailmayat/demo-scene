variable "vpc_id" {
  description = "VPC ID"
  default     = "vpc-043ec2573dbe541bc"
}

variable "subnet" {
  description = "VPC Subnet ID the instance is launched in"
  default     = "subnet-0798bf4eed8b8e5ae"
}

variable "region" {
  description = "AWS Region the instance is launched in"
  default     = "eu-west-1"
}

variable "unique_identifier" {
  description = "Unique ID for AWS objects to avoid naming collisions"
  default = "confluent"
}

## Set this var to existing key pair if using existing one and comment next resource
variable "ssh_key_pair" {
  description = "SSH key pair to be provisioned on the instance"
  default = "imayat-ireland-bootcamp"
}

## Comment out this resource if keypair already exists
#resource "aws_key_pair" "default" {
#  key_name   = var.ssh_key_pair
#  public_key = file(var.ssh_key_public_path)
#}

variable "ssh_key_public_path" {
  description = "Path to local public ssh key"
  default = "id_rsa.pub"
}

variable "instance_type" {
  description = "The type of the instance"
  default     = "t2.large"
}

variable "ami" {
  description = "The AMI to use for the instance."
  # Below amis only work in us-west-2, if you select another region, this MUST be changed with it
  # default = "ami-06f10a38551ed0b61"
  default = "ami-0d5c7dc1a2fd36a4b" #Ubuntu 16
  # default = "ami-0b86e06624ac20c42" # Debian stretch
}

variable "zookeeper_instance_count" {
  description = "EC2 instance count of Zookeeper Nodes"
  default     = "3"
}

variable "kafka_instance_count" {
  description = "EC2 instance count of Kafka Brokers"
  default     = "3"
}

variable "schema_registry_instance_count" {
  description = "EC2 instance count of Schema Registry instances"
  default     = "1"
}

variable "connect_instance_count" {
  description = "EC2 instance count of Connect Nodes"
  default     = "1"
}

variable "rest_proxy_instance_count" {
  description = "EC2 instance count of Rest Proxy Nodes"
  default     = "1"
}

variable "ksql_instance_count" {
  description = "EC2 instance count of KSQL Nodes"
  default     = "1"
}

variable "control_center_instance_count" {
  description = "EC2 instance count of Control Center Nodes"
  default     = "1"
}

variable "owner-name" {
  default = "Ismail Mayat"
}

variable "owner-email" {
  default = "imayat@confluent.io"
}

variable "purpose" {
  default = "Demo tower cp-ansible install"
}