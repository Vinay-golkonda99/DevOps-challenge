terraform {
  backend "s3" {
    bucket         = "terraform-backend-vinay"  
    key            = "terraform.tfstate" 
    region         = "us-west-2" 
    encrypt        = true  
    dynamodb_table = "terraform-locks"  
  }
}
