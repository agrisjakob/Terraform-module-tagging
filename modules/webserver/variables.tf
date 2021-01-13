variable "vpc_id" {
    type = string
    description = "VPC ID"
}

variable "cidr_block" {
    type = string
}

variable "webserver_name" {
    type = string
}


variable "instance_type" {
    type = string
}

variable "service" {
    type = string
}

variable "billing_id" {
    type = string
}

variable "project_id" {
    type = string
}

variable "ontime" {
  description = "On Time"
  type = string
  default = "24/7"
}