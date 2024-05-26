#!/bin/bash

# Atualiza a lista de repositórios
echo "Configurando repositórios..."
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list

# Atualiza o sistema
echo "Atualizando o sistema..."
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# Baixa e instala o ngrok
echo "Baixando e instalando o ngrok..."
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -O /tmp/ngrok.tgz
tar -xvzf /tmp/ngrok.tgz -C /tmp
sudo mv /tmp/ngrok /usr/local/bin/
rm /tmp/ngrok.tgz

# Verifica a instalação do ngrok
ngrok version

echo "Configuração completa!"
