#!/bin/bash

# Configuração dos Repositórios do Kali Linux
echo "Configurando repositórios..."
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list

# Atualização do Sistema
echo "Atualizando o sistema..."
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

echo "Atualização completa! O sistema está pronto para a instalação de novos programas."

# Informações adicionais
echo "
Documentação Oficial do Kali Linux: https://www.kali.org/docs/
Website Oficial do Kali Linux: https://www.kali.org/
Comunidade e Fóruns:
- Reddit: https://www.reddit.com/r/Kalilinux/
- Stack Overflow: https://stackoverflow.com/questions/tagged/kali-linux
- Kali Linux Forums: https://forums.kali.org/

Para restaurar os repositórios, use:
echo \"deb http://http.kali.org/kali kali-rolling main non-free contrib\" | sudo tee /etc/apt/sources.list
sudo apt update

Para atualizar o sistema após configurar os repositórios:
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
"

# Criar arquivo com endereço do repositório para referência rápida
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" > ~/kali-repositories.txt
echo "Arquivo kali-repositories.txt criado em seu diretório home para referência rápida."
