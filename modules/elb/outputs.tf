output "this_elb_id" {
  description = "The name of the ELB"
  value       = "${element(concat(aws_elb.this.*.id, list("")), 0)}"
}

output "this_elb_arn" {
  description = "The ARN of the ELB"
  value       = "${element(concat(aws_elb.this.*.arn, list("")), 0)}"
}

output "this_elb_name" {
  description = "The name of the ELB"
  value       = "${element(concat(aws_elb.this.*.name, list("")), 0)}"
}

output "this_elb_dns_name" {
  description = "The DNS name of the ELB"
  value       = "${element(concat(aws_elb.this.*.dns_name, list("")), 0)}"
}

output "this_elb_instances" {
  description = "The list of instances in the ELB"
  value       = ["${flatten(aws_elb.this.*.instances)}"]
}

output "this_elb_source_security_group_id" {
  description = "The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances"
  value       = "${element(concat(aws_elb.this.*.source_security_group_id, list("")), 0)}"
}

output "this_elb_zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = "${element(concat(aws_elb.this.*.zone_id, list("")), 0)}"
}
