#!/bin/bash

BLUE='\033[0;34m'
GREY='\033[0;37m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREY}Instalando dependecias...${NC}"
sleep 1
echo -ne '▮▮▮▮                     (33%)\r' | lolcat 2>/dev/null
sleep 1
sudo apt install figlet lolcat curl -y &> /dev/null
sudo apt install figlet toilet python curl ruby -y &> /dev/null
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮             (66%)\r' | lolcat 2>/dev/null
sleep 1
sudo gem install lolcat &> /dev/null
sudo apt install python3-pip -y &> /dev/null
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮   (100% completado)\r' | lolcat 2>/dev/null
echo -ne '\n'
figlet -f slant TALKER-N1GHT | lolcat
echo -e "Instalador de SMS-CANNON-N1GHT" | lolcat
sleep 2
echo -e "${GREY}------------------------------------------${NC}"
echo "Instalando dependecias de identidad cambiante" | lolcat
sudo apt-get install -y tor curl &> /dev/null
echo -ne '▮▮▮▮                     (33%)\r' | lolcat
sleep 1
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮             (66%)\r' | lolcat
sleep 1
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮   (100% completado)\r' | lolcat
echo -ne '\n'
echo -e "${GREY}------------------------------------------${NC}"
echo "Instalando identidad cambiante" | lolcat
echo -ne '▮▮▮▮                     (33%)\r' | lolcat
sleep 1
sudo mkdir tor 2>/dev/null
cd tor
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮             (66%)\r' | lolcat
sleep 1
git clone https://github.com/BrainfuckSec/kalitorify 2>/dev/null
cd kalitorify
sudo make install &>/dev/null
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮   (100% completado)\r' | lolcat
echo -ne '\n'
echo -e "${GREY}------------------------------------------${NC}"
figlet -f slant HECHO! | lolcat
echo -e "${RED}HERRAMIENTA HECHA POR UN KITSUNE LLAMADO N1GHTLY CON </3"
sleep 2.3
