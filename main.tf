######
# ELB
######
module "elb" {
  source = "./modules/elb"

  name = "${var.name}"

  subnets         = ["${var.subnets}"]
  security_groups = ["${var.security_groups}"]
  internal        = "${var.internal}"

  cross_zone_load_balancing   = "${var.cross_zone_load_balancing}"
  idle_timeout                = "${var.idle_timeout}"
  connection_draining         = "${var.connection_draining}"
  connection_draining_timeout = "${var.connection_draining_timeout}"

  listener     = ["${var.listener}"]
  access_logs  = ["${var.access_logs}"]
  health_check = ["${var.health_check}"]

  tags = "${merge(var.tags, map("Name", format("%s", var.name)))}"
}

#################
# ELB attachment
#################
module "elb_attachment" {
  source = "./modules/elb_attachment"

  count = "${var.number_of_instances}"

  elb       = "${module.elb.this_elb_id}"
  instances = "${var.instances}"
}
