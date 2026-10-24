Terraform Remote State Backend using AWS S3 and DynamoDB
Project Overview
This project demonstrates how to configure a Terraform Remote Backend using Amazon S3 and DynamoDB.

Instead of storing the Terraform state file locally, the state file is stored centrally in an S3 bucket. A DynamoDB table is used to provide state locking, preventing multiple users or CI/CD pipelines from modifying the Terraform state simultaneously.

This approach follows Terraform best practices and is widely used in enterprise environments to ensure reliable Infrastructure as Code (IaC) management.

Architecture
Terraform
    │
    ▼
Amazon S3 Bucket
    │
    ▼
terraform.tfstate
        ▲
        │
Amazon DynamoDB
(State Locking)

Services Used:

Amazon S3
Amazon DynamoDB
Terraform
AWS Provider

Project Structure:

terraform-remote-state/
│
├── provider.tf
├── s3.tf
├── dynamodb.tf
├── backend.tf
└── README.md
