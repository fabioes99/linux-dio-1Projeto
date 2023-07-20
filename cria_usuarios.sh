#!/bin/bash

mkdir /publico
chmod 777 /publico

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd -m -G GRP_ADM carlos
useradd -m -G GRP_ADM maria
useradd -m -G GRP_ADM joao

passwd carlos
passwd maria
passwd joao

useradd -m -G GRP_VEN debora
useradd -m -G GRP_VEN sebastiana
useradd -m -G GRP_VEN roberto

passwd debora
passwd sebastiana
passwd roberto

useradd -m -G GRP_SEC josefina
useradd -m -G GRP_SEC amanda
useradd -m -G GRP_SEC rogerio

passwd josefina
passwd amanda
passwd rogerio


mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm

mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven

mkdir /sec
chown root:GRP_SEC /sec
chmod 770 /sec



