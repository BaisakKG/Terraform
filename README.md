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
```
terraform init
terraform plan -out m3.tfplan
terraform apply "m3.tfplan"
terraform destroy
terraform show
terraform output
```
