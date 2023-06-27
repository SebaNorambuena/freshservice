#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
blackColour="\e[0;30m"
whiteColour="\e[1;37m"


function ctrl_c(){
echo -e "\n${redColour}[!]${endColour}${grayColour} Saliendo...${endColour}\n"
tput cnorm
exit 1
}

#quitar cursor
tput civis


function banner(){
echo -e "\n${redColour} _________   _________   _________   _________   __     __"
sleep 0.05
echo -e "|  _______| |   ___   | |  _______| |   ______| |  |   |  |"
sleep 0.05
echo -e "| |_______  |  |   |  | | |_______  |  |______  |  |___|  |"
sleep 0.05
echo -e "|  _______| |  |___|  | |         | |         | |         |"
sleep 0.05
echo -e "| |         |  _   ___| |  _______| |_______  | |   ___   |"
sleep 0.05
echo -e "| |         |  |\  \    | |_______   _______| | |  |   |  |"
sleep 0.05
echo -e "|_|         |__| \__\   |_________| |_________| |__|   |__|${endColour}"
sleep 0.05
echo -e "\n\n${blueColour}by Sebastian Norambuena y Cristian Vieytes${endColour}"
sleep 5
}

function footer(){
echo -e "\n\n${yellowColour}▒▒▒▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒▒▒▒▒▒▒${endColour}${blackColour}▓▓▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒${endColour}${blackColour}▓▓▓▓▓▓${endColour}${whiteColour}░░░${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒${endColour}${blackColour}▓${endColour}${whiteColour}░░░░${endColour}${blackColour}▓${endColour}${whiteColour}░░░░${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${blackColour}▓${endColour}${whiteColour}░░░░░░${endColour}${blackColour}▓${endColour}${whiteColour}░${endColour}${blackColour}▓${endColour}${whiteColour}░${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${blackColour}▓${endColour}${whiteColour}░░░░░░${endColour}${blackColour}▓${endColour}${whiteColour}░░░${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${blackColour}▓${endColour}${whiteColour}░░${endColour}${blackColour}▓${endColour}${whiteColour}░░░${endColour}${blackColour}▓▓▓▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒${endColour}${blackColour}▓${endColour}${whiteColour}░░░░${endColour}${blackColour}▓${endColour}${yellowColour}▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒▒${endColour}${blackColour}▓▓▓▓${endColour}${yellowColour}▒▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒▒▒▒▒▒▒▒${endColour}${blackColour}▓▓▓▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒▒▒▒▒${endColour}${blackColour}▓▓▓${endColour}${grayColour}▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒▒▒▒${endColour}${blackColour}▓${endColour}${grayColour}▒▒▒▒▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒▒▒${endColour}${blackColour}▓${endColour}${grayColour}▒▒▒▒▒▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒▒${endColour}${blackColour}▓${endColour}${grayColour}▒▒▒▒▒▒▒▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒${endColour}${blackColour}▓${endColour}${grayColour}▒${endColour}${blackColour}▓${endColour}${grayColour}▒▒▒▒▒▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒${endColour}${blackColour}▓${endColour}${grayColour}▒${endColour}${blackColour}▓▓▓▓▓▓▓▓▓▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒${endColour}${blackColour}▓${endColour}${grayColour}▒▒▒▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "${yellowColour}▒▒${endColour}${blackColour}▓${endColour}${grayColour}▒▒▒▒▒${endColour}${blackColour}▓${endColour}"
sleep 0.05
echo -e "\n\n${greenColour}[+] Instalacion Completada con exito!!!${endColour}"
sleep 5
}

function netcore(){

echo -e "\n${greenColour}[+]${endColour}${grayColour} Descargando paquetes necesarios...${endColour}\n\n"

wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update

wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb

sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb

sudo apt install -y dotnet-sdk-3.1

clear && sleep 2

}

function python(){

echo -e "\n${greenColour}[+]${endColour} ${grayColour}Instalando Pyhton 3.7...${endColour}\n\n"

wget https://www.python.org/ftp/python/3.7.16/Python-3.7.16.tar.xz

tar -xf Python-3.7.16.tar.xz

sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev pkg-config make -y

cd Python-3.7.16/

./configure --enable-optimizations --enable-shared

make -j 6

sudo make altinstall

sudo ldconfig

cd ..

clear && sleep 2

}


function freshservice(){

echo -e "\n${greenColour}[+]${endColour}${grayColour} Instalando FreshService...${endColour}\n\n"

wget https://github.com/SebaNorambuena/freshservice/raw/main/fs-linux-agent-3.8.0.tar.gz

tar -xf fs-linux-agent-3.8.0.tar.gz

sudo python3.7 FS-Linux-Agent.py

}

#ctrl + c
trap ctrl_c INT
banner
netcore
python
freshservice
footer


#traer cursor
tput cnorm

