terraform {

  backend "s3" {

    bucket   =  "brahmaiah-terraform-state-bucket"
 
    key     =   "terraform.tfstate"

    region   =  "ap-south-2"

   dynamodb_table  = "terraform-state-lock"



    }

  }