output "this_elb_id" {
  description = "The name of the ELB"
  value       = module.elb.this_elb_id
}

output "this_elb_arn" {
  description = "The ARN of the ELB"
  value       = module.elb.this_elb_arn
}

output "this_elb_name" {
  description = "The name of the ELB"
  value       = module.elb.this_elb_name
}

output "this_elb_dns_name" {
  description = "The DNS name of the ELB"
  value       = module.elb.this_elb_dns_name
}

output "this_elb_instances" {
  description = "The list of instances in the ELB"
  value       = module.elb.this_elb_instances
}

output "this_elb_source_security_group_id" {
  description = "The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances"
  value       = module.elb.this_elb_source_security_group_id
}

output "this_elb_zone_id" {
  description = "The canonical hosted zone ID of the ELB (to be used in a Route 53 Alias record)"
  value       = module.elb.this_elb_zone_id
}
