provider "aws" {
  region = "${var.region}"
  profile = "${var.aws_profile}"
}

module "front-layer" {
  source = "./modules/front-layer"

  server_port = "${var.server_port}"
  elb_port = "${var.elb_port}"
}
