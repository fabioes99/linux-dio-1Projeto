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

## Subir arquivos no git

instalar o git se não tiver instalado com o comando
apt install git -y

para configurar o git
git config --global user.email "seuemail@teste.con.br"
git config --global user.name "fabioes99"

dentro do repositorio do projeto rodar os seguintes comandos para subir os arquivos para o repositorio que foi configurado
git init 
git add .
git commit -m "subindo arquivos para o repositorio"

git remote add origin https://github.com/fabioes99/linux-dio-1Projeto.git
git push
