// Copyright 2022 Nexient LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

output "id" {
  description = "ID of the secret"
  value       = aws_secretsmanager_secret.secret.id
}

output "arn" {
  description = "ARN of the secret"
  value       = aws_secretsmanager_secret.secret.id
}

output "sv_id" {
  description = "A pipe delimited combination of secret ID and version ID"
  value       = aws_secretsmanager_secret_version.secret.id
}

output "sv_arn" {
  description = "The ARN of the secret"
  value       = aws_secretsmanager_secret_version.secret.id
}

output "sv_version_id" {
  description = "The unique identifier of the version of the secret"
  value       = aws_secretsmanager_secret_version.secret.id
}
