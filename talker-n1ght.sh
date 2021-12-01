#!/bin/bash

BLUE='\033[0;34m'
GREY='\033[0;37m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
TOR="./tor"

clear
figlet -f slant TALKER-N1GHT | lolcat
echo -e "${BLUE}HERRAMIENTA CREADA CON </3 POR N1GHTLY"
echo -e "${GREY}------------------------------------------${NC}"
echo -e "${YELLOW}COMPROBANDO LA INSTALACION DE TALKER-N1GHT${NC}"
echo -ne '▮▮▮▮                     (33%)\r' | lolcat
sleep 1
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮             (66%)\r' | lolcat
sleep 1
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮   (100% completado)\r' | lolcat
echo -ne '\n'
if [ -d "$TOR" ]
then
	echo "|| TALKER esta intalado correctamente ||" | lolcat
else
	echo -e "${RED}Primero tienes que ejecutar install.sh"
fi
echo -e "${GREY}------------------------------------------${NC}"
clear
select=0
figlet -f slant TALKER-N1GHT | lolcat
echo -e "${BLUE}HERRAMIENTA CREADA CON </3 POR N1GHTLY"
echo -e "${GREY}------------------------------------------${NC}"
echo "|| MENU ||" | lolcat
echo "1. ENVIAR SMS" | lolcat
echo "2. GRACIAS N1GHTLY" | lolcat
echo -e "${RED}3. SALIR${NC}"
read -p "selecciona " select
while [ $select != 0 ]; do
if [ $select -eq 2 ]
then
echo -e "${GREY}------------------------------------------${NC}"
echo -e "${YELLOW} N1GHTLY TE DA LAS GRACIAS!"
echo -e "${GREY}------------------------------------------${NC}"
        sleep 3
        clear
        figlet -f slant TALKER-N1GHT | lolcat
echo -e "${BLUE}HERRAMIENTA CREADA CON </3 POR N1GHTLY"
echo -e "${GREY}------------------------------------------${NC}"
echo "|| MENU ||" | lolcat
echo "1. ENVIAR SMS" | lolcat
echo "2. GRACIAS N1GHTLY" | lolcat
echo -e "${RED}3. SALIR${NC}"
read -p "Selecciona " select
elif [ $select -eq 1 ]
then
echo -e "${GREY}------------------------------------------${NC}"
	echo -e "${RED}Iniciando servicios de N1GHT-TALKER... No detengas el script...${NC}"
	echo -ne '▮▮▮▮                     (33%)\r' | lolcat
sleep 1
kalitorify --restart &>/dev/null
kalitorify --tor &>/dev/null
sleep 4
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮             (66%)\r' | lolcat
sleep 1
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮   (100% servicios iniciados)\r' | lolcat
echo -ne '\n'
sleep 2
echo -e "${GREY}------------------------------------------${NC}"
	clear
        break
elif [ $select -eq 3 ]
then
	echo -e "${GREY}------------------------------------------${NC}"
echo -e "${RED}Deteniendo servicios de N1GHT-TALKER... No detengas el script...${NC}"
echo -ne '▮▮▮▮                     (33%)\r' | lolcat
sleep 1
kalitorify --clearnet &>/dev/null
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮             (66%)\r' | lolcat
sleep 1
echo -ne '▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮▮   (100% servicios detenidos)\r' | lolcat
echo -ne '\n'
	echo -e "${GREY}------------------------------------------${NC}"
        echo -e "${YELLOW} SALIENDO DE TALKER-N1GHT - HASTA LUEGO!"
        echo -e "${GREY}------------------------------------------${NC}"
        exit
else
	2>/dev/null
        echo -e "${GREY}------------------------------------------${NC}"
	echo -e "${RED}ERROR LOS DATOS INTRODUCIDOS NO SON VALIDOS"
	echo -e "${GREY}------------------------------------------${NC}"
	sleep 3
	clear
	figlet -f slant TALKER-N1GHT | lolcat
echo -e "${BLUE}HERRAMIENTA CREADA CON </3 POR N1GHTLY"
echo -e "${GREY}------------------------------------------${NC}"
echo "|| MENU ||" | lolcat
echo "1. ENVIAR SMS" | lolcat
echo "2. GRACIAS N1GHTLY" | lolcat
echo -e "${RED}3. SALIR${NC}"
        read -p "Selecciona " select
fi
done
figlet -f slant TALKER-N1GHT | lolcat
echo -e "${BLUE}HERRAMIENTA CREADA CON </3 POR N1GHTLY"
bash cannon.sh --SENDSMS
