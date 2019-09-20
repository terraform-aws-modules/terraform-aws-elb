resource "aws_elb_attachment" "this" {
  count = var.create_attachment ? var.number_of_instances : 0

  elb      = var.elb
  instance = element(var.instances, count.index)
}
