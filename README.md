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

## Inputs

| Name         | Description                                 |  Type  | Default | Required |
| ------------ | ------------------------------------------- | :----: | :-----: | :------: |
| secret_path  | Path to create the secret under             | string |   n/a   |   yes    |
| secret_value | Actual secret to store                      | string |   n/a   |   yes    |
| tags         | Tags to be applied to all resources created |  map   | `<map>` |    no    |

## Outputs

| Name          | Description                                              |
| ------------- | -------------------------------------------------------- |
| id            | ID of the secret                                         |
| arn           | ARN of the secret                                        |
| sv_id         | A pipe delimited combination of secret ID and version ID |
| sv_arn        | The ARN of the secret                                    |
| sv_version_id | The unique identifier of the version of the secret       |
