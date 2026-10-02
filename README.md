# AWS VPC Terraform

Root module that creates a VPC, one subnet, and a security group in `us-east-1`.

## Layout

```
.
├── backend.tf
├── main.tf
├── outputs.tf
├── variables.tf
├── versions.tf
├── .github/workflows/
│   ├── terraform.yml
│   └── destroy.yml
└── modules/
    ├── vpc/
    ├── subnet/
    └── security_group/
```

The previous `VPC-main/` tree was a duplicate of this root and has been removed. GitHub Actions only load workflows from `.github/workflows` at the repository root.

## Remote state

State is stored in S3 bucket `powertool2028`, key `vpc/terraform.tfstate`, region `us-east-1`, with S3 native locking (`use_lockfile`).

## Local apply

```bash
terraform init
terraform plan
terraform apply
```

## GitHub Actions

Required secrets: `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_REGION`.

- `terraform.yml` — plan and apply the root module once. Optional workspace: `default`, `dev`, `staging`, `prod`.
- `destroy.yml` — destroy that same workspace.

Do not run separate inits per module. VPC, subnet, and security group are one root module and one state file.

## Note

The security group still allows SSH from `0.0.0.0/0` because that is what `main.tf` passes in. Restrict `ingress_cidr_blocks` before using this outside a lab.
