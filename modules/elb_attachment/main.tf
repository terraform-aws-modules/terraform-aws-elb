#################
# ELB attachment
#################
resource "aws_elb_attachment" "this" {
  count = "${var.count}"

  elb      = "${var.elb}"
  instance = "${element(var.instances, count.index)}"
}
