# `tf-aws-module-secrets_manager`

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC_BY--NC--ND_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/)

## Overview

This module manages secrets in AWS.

To enable automatic secret rotation, the Secrets Manager service requires usage of a Lambda function.

## Usage

```golang
module "database_username" {
  source = "../../../modules/secrets-manager"

  secret_path  = local.secret_path_database_username
  secret_value = var.database_username
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.57.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secret_path"></a> [secret\_path](#input\_secret\_path) | Path to create the secret under | `string` | n/a | yes |
| <a name="input_secret_value"></a> [secret\_value](#input\_secret\_value) | Actual secret to store | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to be applied to all resources created | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of the secret |
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the secret |
| <a name="output_sv_id"></a> [sv\_id](#output\_sv\_id) | A pipe delimited combination of secret ID and version ID |
| <a name="output_sv_arn"></a> [sv\_arn](#output\_sv\_arn) | The ARN of the secret |
| <a name="output_sv_version_id"></a> [sv\_version\_id](#output\_sv\_version\_id) | The unique identifier of the version of the secret |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
