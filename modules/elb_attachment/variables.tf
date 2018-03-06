variable "number_of_instances" {
  description = "Number of instances ID to place in the ELB pool"
}

variable "elb" {
  description = "The name of the ELB"
}

variable "instances" {
  description = "List of instances ID to place in the ELB pool"
  type        = "list"
}
