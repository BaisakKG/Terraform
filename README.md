# Мое погружение в Терраформ
- Это относится к теме Инфраструктура как код )

## Начало
- Императив - это когда говориш что надо и как надо сделать
- Декларатив - это когда говориш что нужно и все, к этому и относится терраформ 
- Идемпотентность - целостность, конфигурация == среда
- Используется Push метод

```
git ls-tree -r master
git rm -r --cached master
```

- Команды конфигурации
```
terraform init
terraform plan -var-file="terraform.tfvars"  -out m3.tfplan
terraform apply "m3.tfplan"
terraform destroy
terraform show
terraform output
terraform fmt
```

- Тестирование функций
Сначала надо инициализировать а после через тераформ консол работать
```
terraform console
min(23,44,2)
cidrsubnet(var.network_address_space, 8, 0)
cidrhost(cidrsubnet(var.network_address_space, 8, 0),5)
lookup(local.common_tags, "BillingCode", "Unknown")
local.s3_bucket_name
```
- Работа с несколькими средами
Вариант с подпапками
```
terraform plan -state=".\dev\dev.state"
    -var-file="common.tfvars"
    -var-file=".\dev\dev.tfvars"
```
- Использование Workspace
Чтобы это использовать надо переделать переменные, пример в папке threeSpot
```
terraform init
terraform workspace new Development
terraform plan -out dev.tfplan
terraform apply "dev.tfplan"

terraform workspace new UAT
terraform plan -out uat.tfplan
terraform apply "uat.tfplan"

#export AWS_ACCESS_KEY_ID="sd"
#export AWS_SECRET_ACCESS_KEY="sd"

terraform workspace new Production
terraform plan -out prod.tfplan
terraform apply "prod.tfplan"

```
- Есть готовые модули
**https://registry.terraform.io/**