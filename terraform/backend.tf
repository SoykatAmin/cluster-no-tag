# Remote State configuration for EKS cluster cluster-tag-sbagliati
# Bucket, DynamoDB lock table and region are provided dynamically via Tekton task
# execution using `-backend-config` flags or backend configuration files.

terraform {
  backend "s3" {
    key     = "eks-clusters/cluster-tag-sbagliati/terraform.tfstate"
    encrypt = true
  }
}
