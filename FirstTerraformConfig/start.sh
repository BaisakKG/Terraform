terraform init
terraform plan -out m3.tfplan
terraform apply "m3.tfplan"
terraform destroy