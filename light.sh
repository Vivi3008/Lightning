#!bin/bash
echo "Atualizando repositórios..."

if [ !apt-get update ] 
then
echo "Não foi possivel atualizar os repositórios. Verifique o arquivo /etc/apt/sources.list"
exit 1
fi 
echo "atualização feita com sucesso!"

if ! apt-get dist-upgrade -y
then
echo "Não foi possível atualizar pacotes!"
exit 1
fi 
echo "Atualização de pacotes feita com sucesso!"

if ! apt-get install $1
then
echo "Não foi possível instalar o pacote $1!"
exit 1
fi 
echo "Instalação finalizada!"