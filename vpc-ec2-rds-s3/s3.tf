module "s3" {
    source = "./modules/S3"
    bucket_name = var.bucket_name
}