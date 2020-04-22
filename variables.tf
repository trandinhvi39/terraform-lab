variable "server_port" {
  description = "Server port"
  default     = "8080"
}

variable "region" {
  description = "Region of server"
  default = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile deploy"
  default = "default"
}

variable "elb_port" {
  description = "Port of Elastic load balancing"
  default = "9090"
}
