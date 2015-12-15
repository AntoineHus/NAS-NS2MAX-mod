#!/bin/bash
#Author: Antoine Houssais
###############################################################
#https://sourcery.mentor.com/GNUToolchain/release2635

echo "The script installs the codesourcery toolchian for compiling the projet NAS_NS2MAX_mod."
if [[ $EUID -ne 0 ]]; then
   echo -e "\033[31m[-] This script must be run as root. \033[0m"
   exit 1
fi

echo -e "\033[31m[-] Install build-essential libncurses-dev u-boot-tools. \033[0m"

apt-get install build-essential libncurses-dev u-boot-tools

cd /usr/local/src

echo -e "\033[31m[-] Download the sourcery toolchain. \033[0m"
sudo wget https://sourcery.mentor.com/GNUToolchain/package11444/public/arm-none-eabi/arm-2013.05-23-arm-none-eabi.bin

if 
else

fi
echo -e "\033[31m[-] Reconfigure dash. \033[0m"
sudo dpkg-reconfigure -plow dash
	#Install as /bin/sh? No
	
echo -e "\033[31m[-] Configure the console. \033[0m"
/bin/sh /usr/local/src/arm-2013.05-23-arm-none-eabi.bin -i console

	#accept all defaults...
echo -e "\033[31m[-] Reconfigure dash. \033[0m"
sudo dpkg-reconfigure -plow dash
	#Install as /bin/sh? YES
echo -e "\033[31m[-] Configure the bashrc. \033[0m"

echo "# CROSS COMPILE CONFIGURATION" >> ~/.bashrc
echo "export PATH=/root/CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_EABI/bin:$PATH" >> ~/.bashrc
echo "export CROSS_COMPILE=arm-none-eabi-" >> ~/.bashrc
echo "export ARCH=arm" >> ~/.bashrc