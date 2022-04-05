resource "aws_instance" "main" {
	ami           = var.ami
	instance_type = var.instance_type
    subnet_id = aws_subnet.subnet.id
	tags = {
		Name = var.project_name
	}
}

resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.subnet
	availability_zone = "us-east-2a"
}
