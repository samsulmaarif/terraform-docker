# terraform-docker

di openSUSE leap 15.1, edit file ini

```
sudo vim /etc/sysconfig/docker
```

lalu tambahkan

```
DOCKER_OPTS="-H tcp://127.0.0.1:2376"
``` 

restart dockernya

```
sudo systemctl restart docker
```

baru jalankan terraformnya

```
terraform init
terraform plan
terraform apply
```
kalo sudah tidak terpakai bisa didestroy

```
terraform destroy
```
