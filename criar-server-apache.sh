#!/bin/bash

echo "*******************************************************"
echo "**                                                   **"
echo "** Iniciando script de instalação de servidor Web... **"
echo "**                                                   **"
echo "*******************************************************"
sleep 2
echo "****************************************************"
echo "**           Atualizando lista de pacotes         **"
echo "****************************************************"
sleep 1
apt update
echo "****************************************************"
echo "**       Efetivando a atualização de pacotes      **"
echo "****************************************************"
sleep 1
apt upgrade -y
echo "****************************************************"
echo "**           Instalando o serviço Web             **"
echo "****************************************************"
sleep 1
apt install apache2 -y
echo "******************************************************"
echo "** Instalando software de descompressão de arquivos **"
echo "******************************************************"
sleep 1
apt install unzip -y
echo "****************************************************"
echo "**              Baixando Aplicação Web            **"
echo "****************************************************"
sleep 1
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "****************************************************"
echo "**          Movendo arquivos temporarios          **"
echo "****************************************************"
sleep 1
mv main.zip /tmp
echo "****************************************************"
echo "**           Descompactando arquivos              **"
echo "****************************************************"
sleep 1
unzip /tmp/main.zip
echo "****************************************************"
echo "** Envio de arquivos para o diretório correto     **"
echo "****************************************************"
sleep 1
cp -R linux-site-dio-main/* /var/www/html/
echo "****************************************************"
echo "**       Eliminando arquivos desnecessarios       **"
echo "****************************************************"
sleep 1
rm -R linux-site-dio-main
rm /tmp/main.zip
echo "******************************************************"
echo "**                                                  **"
echo "** Script de instalação de servidor Web Finalizado! **"
echo "**                                                  **"
echo "******************************************************"
sleep 2
