# Retirando pastas e usuários do disco antes de rodar o script
rm -Rf /adm
rm -Rf /public
rm -Rf /mariana
rm -Rf /teste
rm -Rf /textos
rm -Rf /ven

userdel -r maisa
userdel -r daniel
userdel -r debora
userdel -r teste
userdel -r rodrigo
userdel -r adm
userdel -r guest
userdel -r guest1
userdel -r guest2
userdel -r guest3
userdel -r joao

groupdel GRP_ADM
groupdel GRP_VEN

# Para fazer o script executável, rodar o seguinte comando
chmod +x nomedo_script.sh
