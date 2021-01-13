provider "aws" {
    region = "us-west-2"
}

resource "aws_vpc" "agris_vpc" {
    cidr_block = "10.0.0.0/16"
}

module "my_webserver" {
    instance_type = "t2.micro"
    source = "./modules/webserver"
    vpc_id = aws_vpc.agris_vpc.id
    cidr_block = "10.0.0.0/16"
    webserver_name = "agris"
    billing_id = "bill id"
    project_id = "modules tutorial"
    service = "images"

}