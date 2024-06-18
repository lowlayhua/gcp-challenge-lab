# Terraform 
Build Infrastructure with Terraform on Google Cloud: Challenge Lab
- https://www.cloudskillsboost.google/paths/20/course_templates/636/labs/464836



main.tf
variables.tf
modules/
└── instances
    ├── instances.tf
    ├── outputs.tf
    └── variables.tf
└── storage
    ├── storage.tf
    ├── outputs.tf
    └── variables.tf
Copied!


# Import GCE
terraform import module.foo.aws_instance.bar i-abcd1234

$ terraform import google_compute_instance.default projects/{{project}}/zones/{{zone}}/instances/{{name}}
$ terraform import google_compute_instance.default {{project}}/{{zone}}/{{name}}
$ terraform import google_compute_instance.default {{name}}
```
import {
  id = "projects/{{project}}/zones/{{zone}}/instances/{{name}}"
  to = google_compute_instance.default
}
```
