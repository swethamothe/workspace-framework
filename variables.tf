variable "vpc_region" {
	type = string
}

variable "ami" {
	type = string
}

variable "instance_type" {
	type    = string
	default = "t2.micro"
}

variable "vpc" {
    type = string
}

variable "subnet" {
    type = string
}

variable "project_name" {
    type = string
}

variable "env_name" {
    type = string
}
