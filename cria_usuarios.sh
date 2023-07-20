#!/bin/bash

echo "Criando publico"

mkdir /publico
chmod 777 /publico

echo "Criando grupos e usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM carlos 
useradd -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM maria
useradd -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM joao

passwd carlos
passwd maria
passwd joao

useradd -m -s /bin/bash -p $(openssl passwd -6 senha123)  -G GRP_VEN debora
useradd -m -s /bin/bash -p $(openssl passwd -6 senha123)  -G GRP_VEN sebastiana
useradd -m -s /bin/bash -p $(openssl passwd -6 senha123)  -G GRP_VEN roberto

passwd debora
passwd sebastiana
passwd roberto

useradd -m -s /bin/bash -p $(openssl passwd -6 senha123)  -G GRP_SEC josefina
useradd -m -s /bin/bash -p $(openssl passwd -6 senha123)  -G GRP_SEC amanda
useradd -m -s /bin/bash -p $(openssl passwd -6 senha123)  -G GRP_SEC rogerio

passwd josefina
passwd amanda
passwd rogerio

echo "criando pastas e permissoes de grupos"

mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm

mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven

mkdir /sec
chown root:GRP_SEC /sec
chmod 770 /sec

echo "fim do script"

