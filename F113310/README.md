# Terraform na AWS ☁

Neste projeto foi necessário realizar a construção de uma infraestrutura na AWS utilizando o Terraform, partindo do conceito de IaC.


# Configurando AWS
Para inicializar o terraform na AWS e provisionar a infraestrutura, deve realizar a configuração do ***.\aws\credentials***.

Desta forma é necessário realizar o acesso ao arquivo de configuração, nos testes foi utilizado o Windows, então para acessar basta colocar o ***Windows + R*** e adicionar o ***"%USERPROFILE%\.aws\credentials"***.

Após realizar as configuração do ***aws_access_key_id*** e o ***aws_secret_access_key***, será necessário inicializar o terraform.

# Terraform para AWS

Para iniciar o Terraform será necessário realizar o comando abaixo:
```sh
terraform init
```
***Após rodar o comando acima, será criado um .terraform, salvando algumas informações.***

Ao inicializar o terraform no diretório, será necessário realizar o plan
```sh
terraform plan
```

E para provisionar a infraestrutura na AWS basta realizar o comando abaixo:
```sh
terraform apply
```

Caso queira destruir as configurações setadas anteriormente, basta executar o comando abaixo.
```sh
terraform destroy
```