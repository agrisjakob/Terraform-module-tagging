terraform {
    required_version = ">= 0.12"
}


resource "aws_subnet" "webserver" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block
}

resource "aws_instance" "webserver" {
    ami = "ami-0c5204531f799e0c6"
    instance_type = var.instance_type
    subnet_id = aws_subnet.webserver.id

    tags = merge(
        module.tags,
        {
        Name = "${var.webserver_name} webserver"
        billing_id = var.billing_id
        project = var.project_id
        service = var.service
        },
    )
}

module "tags" {
    source = "../mand_tags"
    ontime = var.ontime
}