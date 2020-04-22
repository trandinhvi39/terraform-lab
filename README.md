# DevOps: InfraAsCode (IaC) with Terraform

## Module

- **modules/front-layer**

  - [x] security-group
  - [x] auto-scaling-group
  - [x] launch-configuration
  - [x] elastic-load-balancing
  - [x] node.tf

## Vars

- Get variable for main.tf
  - [x] variables

- Install awscli

```
python --version
pip --version
pip install awscli --upgrade --user
```

- Need to [create IAM User (Access & Secret Key)](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html) with Right Permission
- Terraform will use this IAM User to create AWS infrastructure

```
aws configure --profile example
    AWS Access Key ID:
    AWS Secret Access Key:
    Default region name:
    Default output format: None
```

## How to Run

1. Edit ~/.aws/config, Add following profile for cross account access

```
[profile example]
region = ap-southeast-1
role_arn = arn:aws:iam::045678323111:role/CrossAccountAccessRole
source_profile = example
```

2. Init terraform

```
cd terraform-lab
terraform init
```

3. Setup var and run

```
terraform workspace select example
terraform apply
```

## How to Destroy

```
cd terraform-lab
terraform destroy
```

