output "elb_id" {
  description = "The name of the ELB"
  value       = try(aws_elb.this[0].id, "")
}

output "elb_arn" {
  description = "The ARN of the ELB"
  value       = try(aws_elb.this[0].arn, "")
}

output "elb_name" {
  description = "The name of the ELB"
  value       = try(aws_elb.this[0].name, "")
}

output "elb_dns_name" {
  description = "The DNS name of the ELB"
  value       = try(aws_elb.this[0].dns_name, "")
}

output "elb_instances" {
  description = "The list of instances in the ELB"
  value       = flatten(aws_elb.this[*].instances)
}

output "elb_source_security_group" {
  description = "The name of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances. Use this for Classic or Default VPC only."
  value       = try(aws_elb.this[0].source_security_group, "")
}

output "elb_source_security_group_id" {
  description = "The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances. Only available on ELBs launched in a VPC."
  value       = try(aws_elb.this[0].source_security_group_id, "")
}

output "elb_zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = try(aws_elb.this[0].zone_id, "")
}
