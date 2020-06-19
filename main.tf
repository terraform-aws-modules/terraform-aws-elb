######
# ELB
######
module "elb" {
  source = "./modules/elb"

  create_elb = var.create_elb

  name        = var.name
  name_prefix = var.name_prefix

  subnets         = var.subnets
  security_groups = var.security_groups
  internal        = var.internal

  cross_zone_load_balancing   = var.cross_zone_load_balancing
  idle_timeout                = var.idle_timeout
  connection_draining         = var.connection_draining
  connection_draining_timeout = var.connection_draining_timeout

  listener     = var.listener
  access_logs  = var.access_logs
  health_check = var.health_check

  tags = merge(
    var.tags,
    {
      "Name" = format("%s", var.name)
    },
  )
}

#################
# ELB attachment
#################
module "elb_attachment" {
  source = "./modules/elb_attachment"

  create_attachment = var.create_elb

  number_of_instances = var.number_of_instances

  elb       = module.elb.this_elb_id
  instances = var.instances
}
