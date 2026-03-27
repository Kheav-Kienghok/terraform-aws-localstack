# Terraform AWS LocalStack Example

This project provisions a simple AWS-like environment using [LocalStack](https://github.com/localstack/localstack) and Terraform. It includes:

- A VPC, subnet, and security group (allowing SSH)
- An EC2 instance (using a local AMI ID)
- An S3 bucket configured for static website hosting

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html)
- [LocalStack](https://docs.localstack.cloud/getting-started/)
- AWS CLI (configured for LocalStack, or use environment variables)

## Usage

1. **Start LocalStack**  

   ```sh
   localstack start
   ```

2. **Initialize Terraform**  

   ```sh
   terraform init
   ```

3. **Apply the configuration**  

   ```sh
   terraform apply
   ```

4. **Outputs**  
   - `ec2_public_ip`: The public IP of the EC2 instance (may be empty if using LocalStack, as EC2 networking is simulated).
   - `website_url`: The URL of the S3 static website.

## Notes

- The EC2 instance uses a local AMI ID from a file (`data.local_file.ami_id`). Ensure this file exists and contains a valid AMI ID for your environment.
- When using LocalStack, some AWS features (like EC2 public IPs) may not be fully supported or simulated.
- The S3 static website should be accessible at the output `website_url`.

## Cleanup

To destroy all resources:

```sh
terraform destroy
```
