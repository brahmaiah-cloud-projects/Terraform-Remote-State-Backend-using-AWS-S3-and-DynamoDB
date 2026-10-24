resource "aws_s3_bucket" "tf_state" {

  bucket = "brahmaiah-terraform-state-bucket" 

  tags = {

    Name =  "TerraformStateBucket"



      }

   }