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
