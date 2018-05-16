resource "aws_elb_attachment" "this" {
  count = "${var.number_of_instances}"

  elb      = "${var.elb}"
  instance = "${element(var.instances, count.index)}"
}
