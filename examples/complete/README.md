Complete ELB example
====================

Configuration in this directory creates ELB, EC2 instances and attach them together.

Data sources are used to discover existing VPC resources (VPC, subnet and security group).

Usage
=====

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.
