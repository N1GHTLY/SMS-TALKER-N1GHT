#!/usr/bin/env python
import threading
import string
import base64
import urllib.request
import urllib.parse
import os
import time
import sys
import random

try:
    import requests
except ImportError:
    print('Error !! : Some dependencies are not installed')
    print('Error Occured!!!\nUse Non-Supported Version')
    input('Press Any Key To Use Non-supported Version')
    os.system('bash send.sh --sendsms')

# colors
yellow='\033[93m'
gren='\033[92m'
cyan='\033[96m'
pink='\033[95m'
red='\033[91m'
b='\033[1m'
W = '\033[0m'
colors = ['\033[1;31m', '\033[1;32m', '\033[1;33m', '\033[1;34m', '\033[1;35m', '\033[1;36m']

while True:
        print("\033[0m- SMS-T4LKER-N1GHT enviará mensajes SMS de forma anonima...")
        break
type = 0
try:
        if sys.argv[1] == "track":
                type = 1
except Exception:
        type = 0
if type == 1:
        print("Localizacion del mensaje enviado...")
        print()
        Track()
elif type == 0:
        while True:
                print("- Se requerira el numero al que quieres enviar el mensaje SMS de forma anonima via T4LKER")
                cc = input("- Introduce el codigo de pais (Sin el +) : ")
                if '+' in cc:
                        tc = list(cc)
                        tc.remove('+')
                        cc = ''.join(tc)
                        cc = cc.strip()
                if len(cc) >= 4 or len(cc) < 1:
                        print('\n\nCodigo de pais erroneo...\n\t\tLos codigo de pais tienen generalmente 3 digitos como maximo...\n')
                        continue
                pn = input("- Introduce en numero de telefono : +" + cc + " ")
                if len(pn) <= 6:
                        print('\n\nNumero no valido..\n')
                        continue
                numbe = cc + pn
                if not numbe.isdigit():
                            print('\n\nEl numero de telefono ha de consistir en numeros\n')
                            continue
                receiver = '+' + numbe
                text = input("- Introduce el mensaje a enviar : ")
		
                resp = requests.post('https://textbelt.com/text',{
                        'phone' : receiver,
                        'message' : text ,
                        'key' : 'textbelt'
		})
		
                print(resp.json())
                os.system('figlet -f slant T4LKER-N1GHT | lolcat')
                print("\033[92m Herramienta creada por N1GHTLY con </3")
                break
                if '"success" : true ' in resp.text:
                    print("\033[92m Mensaje enviado con exito \033[0m")
                    input('\n\t\tPulsa cualquiera tecla para continuar...')
                    banner()
                    exit()
                if '"success" : false ' in resp.text:
                    print("\033[91m UN ERROR HA OCURRIDO...")
                    print("\033[91m ERROR AL ENVIAR SMS!! ")
                    input('\n\t\tPulsa cualquiera tecla para continuar...')
                    banner()
                    exit()
                exit() 

