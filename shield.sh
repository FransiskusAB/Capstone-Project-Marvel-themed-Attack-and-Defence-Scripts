#!/bin/bash

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

my_own_ip=$(ifconfig | grep broadcast | awk '{print $2}') # For logging purpose / excluding self in packet capture

function shield_banner()
{
echo -e "               ⠀⠀⠀⠀⠀⠀⠀⠀${RED}⣀⣤⣶⣶⣾⣿⣿⣿⣿⣷⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀"
sleep 0.3
echo -e "               ⠀⠀⠀⠀⠀${RED}⣠⣴⣿⣿⣿⠿⠟⠛⠛⠉⠙⠛⠛⠻⠿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀"
sleep 0.3
echo -e "               ⠀⠀⠀${RED}⣠⣾⣿⣿⠟⠋⠀⠀⠀${BLUE}⢀⣀⣀⣀⣀⡀⠀⠀⠀${RED}⠙⠻⣿⣿⣷⣄⠀⠀⠀"
sleep 0.3
echo -e "               ⠀⠀${RED}⣴⣿⣿⠟⠁⠀⠀${BLUE}⣠⣶⣾⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀${RED}⠈⠻⣿⣿⣦⠀⠀"
sleep 0.3
echo -e "               ⠀${RED}⣼⣿⣿⠋⠀⠀${BLUE}⣠⣾⣿⡿⠟⠋⠉⢁⠈⠉⠙⠻⣿⣿⣷⣄⠀⠀${RED}⠙⣿⣿⣧⠀"
sleep 0.3
echo -e "               ${RED}⢰⣿⣿⠇⠀⠀${BLUE}⣸⣿⣿⠏⠀⠀⠀⠀${ENDCOLOR}⣼⣇⠀⠀⠀⠀${BLUE}⠻⣿⣿⣆⠀⠀${RED}⢹⣿⣿⡆"
sleep 0.3
echo -e "               ${RED}⣾⣿⣿⠀⠀${BLUE}⢰⣿⣿⡏${ENDCOLOR}⠠⣤⣤⣤⣤⣿⣿⣤⣤⣤⣤⠄${BLUE}⢹⣿⣿⡄⠀⠀${RED}⣿⣿⣧"
sleep 0.3
echo -e "               ${RED}⣿⣿⣏⠀⠀${BLUE}⢸⣿⣿⡇⠀${ENDCOLOR}⠀⠙⠿⣿⣿⣿⣿⠟⠋⠀⠀${BLUE}⢸⣿⣿⡇⠀⠀${RED}⣿⣿⣿"
sleep 0.3
echo -e "               ${RED}⢿⣿⣿⠀⠀${BLUE}⠸⣿⣿⣇⠀⠀${ENDCOLOR}⠀⣸⣿⡿⢿⣿⣇⠀⠀⠀${BLUE}⣸⣿⣿⠃⠀⠀${RED}⣿⣿⡟"
sleep 0.3
echo -e "               ${RED}⠸⣿⣿⣇⠀⠀${BLUE}⠹⣿⣿⣦⡀${ENDCOLOR}⠠⠟⠁⠀⠀⠈⠛⠄${BLUE}⢀⣴⣿⣿⠏⠀⠀${RED}⣸⣿⣿⠇"
sleep 0.3
echo -e "               ${RED}⠀⢻⣿⣿⣄⠀⠀${BLUE}⠙⢿⣿⣿⣦⣄⣀⣀⣀⣀⣠⣴⣿⣿⡿⠋⠀⠀${RED}⣰⣿⣿⡟⠀"
sleep 0.3
echo -e "               ${RED}⠀⠀⠻⣿⣿⣦⡀⠀⠀${BLUE}⠙⠻⢿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠀⠀${RED}⢀⣼⣿⣿⠏⠀⠀"
sleep 0.3
echo -e "               ${RED}⠀⠀⠀⠙⢿⣿⣿⣦⣄⡀⠀⠀⠀${BLUE}⠉⠉⠉⠉⠀⠀⠀${RED}⢀⣠⣶⣿⣿⡿⠃⠀⠀⠀"
sleep 0.3
echo -e "               ${RED}⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣷⣶⣤⣤⣤⣤⣤⣤⣶⣾⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀"
sleep 0.3
echo -e "               ${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⠿⣿⣿⣿⣿⠿⠿⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀${ENDCOLOR}"
}

function mind_stone_defence()
{
cd target # To specify the directory to be monitored, shield.sh should be just outside of the directory
md5sum * > hash_table
sleep 20
md5sum * >> hash_table
cat hash_table | sort | uniq -c | awk '$1<2' | grep -v hash_table | awk '{print $NF}' | sort | uniq > hash_changes
rm hash_table
for x in $(cat hash_changes)
do
	echo "[!] There is a detected change in: $x"
	change_time_dateonly=$(stat $x | grep Modify | awk -F\. '{print $1}' | awk '{print $2}')
	change_time_timeonly=$(stat $x | grep Modify | awk -F\. '{print $1}' | awk '{print $3}')
	change_time_formatted="$change_time_dateonly/$change_time_timeonly"
	sudo echo -e "${YELLOW}[!]${ENDCOLOR} $change_time_formatted HASH_CHANGE by UNCONFIRMED_USER for $x detected" >> /var/log/shield.log
	# Unconfirmed User can be compared to who is logging via "last" (cannot identify in automated manner, but can narrow down)
done
rm hash_changes
cd ..
}

function power_stone_defence()
{
sudo -v
touch fail_logins
touch suspect_list
cat /var/log/auth.log | grep Failed | grep -v polkit | awk '{print $(NF-3)}' | sort | uniq -c | sort -rn >> fail_logins
# There is an issue as the auth.log always includes "Loading rules polkitd", which is excluded by grep -v
cat fail_logins | awk '$1 > 100' | awk '{print $2}' > suspect_list # To filter the number of fail logins above threshold are generating alert
# The 100 is threshold so that only above 100 tries will trigger an alert

for suspect in $(cat suspect_list)
do
	fail_login_count=$(cat fail_logins | grep $suspect | awk '{print $1}')
	first_fail_login_timeonly=$(cat /var/log/auth.log | grep Failed | grep $suspect | awk '{print $1}' | head -n 1 | awk -F"T" '{print $2}' | awk -F\. '{print $1}')
	first_fail_login_dateonly=$(cat /var/log/auth.log | grep Failed | grep $suspect | awk '{print $1}' | head -n 1 | awk -F"T" '{print $1}')
	first_fail_login_formatted="$first_fail_login_dateonly/$first_fail_login_timeonly"
	duplicate_count=$(sudo cat /var/log/shield.log | grep "$first_fail_login_formatted $fail_login_count count of FAILED_LOGIN by $suspect detected" | wc -l)
	# echo "The duplicate count is: $duplicate_count" # Only for checking/diagnostic purpose
	# The following if statement is to ensure there is no repeated log everytime 
	# This will filter out exactly similar combination of first log-in failure, count and IP
	# However, in the case that one variable is different (for example more count of login failure with the same IP and same first fail login time, it would still be logged)
	# This can be handled separately (eg. using grep and awk to isolate the IP address and take the most number of count)
	if [ $duplicate_count == 0 ]
	then
		sudo echo -e "${PURPLE}[!]${ENDCOLOR} $first_fail_login_formatted $fail_login_count count of FAILED_LOGIN by $suspect detected" >> /var/log/shield.log
	else
		sudo echo -e "${PURPLE}[!]${ENDCOLOR} $first_fail_login_formatted $fail_login_count count of FAILED_LOGIN by $suspect detected"
		echo "This has previously been logged"
	fi
done
rm fail_logins suspect_list
}

function space_stone_defence()
{
touch temporary_capture
touch capture_summary
sudo tcpdump > temporary_capture # will rewrite previous if file not deleted

cat temporary_capture | grep [S] | awk '{print $3}' | awk -F\. '{print $1"."$2"."$3"."$4}' |  sort | uniq -c > capture_summary
cat capture_summary | awk '$1 > 100' | grep -v $my_own_ip  | awk '{print $2}' > scanner_list # To ensure only large number of scans generates an alert
# Currently set the threshold as 100 as the minimum amount of scan by the same host that will trigger an alert
# Update this accordingly

for scanner in $(cat scanner_list)
do
	scan_count=$(cat capture_summary | grep $scanner | awk '{print $1}')
	first_scan_timeonly=$(cat temporary_capture | grep $scanner | grep [S] | head -n 1 | awk -F\. '{print $1}')
	first_scan_dateonly=$(timedatectl | grep "Local time" | awk '{print $4}')
	first_scan_time_formatted="$first_scan_dateonly/$first_scan_timeonly"
	echo -e "${BLUE}[!]${ENDCOLOR} $first_scan_time_formatted $scan_count count of PORT_SCAN by $scanner detected" >> /var/log/shield.log
done

rm scanner_list
rm capture_summary
rm temporary_capture
}

function soul_stone_defence()
{
arp_check_interval=60
touch arp_listing
arp -n >> arp_listing
sleep $arp_check_interval
arp -n >> arp_listing
cat arp_listing | grep -v HWtype | awk '{print $1,$3}' | sort | uniq | sort > arp_ip_summary
cat arp_ip_summary | awk '{print $1}' | sort | uniq -c | awk '$1 > 1' | awk '{print $2}' > spoofed_ip_list
time_detected_timeonly=$(sudo timedatectl | grep "Local time" | awk '{print $5}')
time_detected_dateonly=$(sudo timedatectl | grep "Local time" | awk '{print $4}')
time_detected="$time_detected_dateonly/$time_detected_timeonly"
for spoofed_ip in $(cat spoofed_ip_list)
do
sudo echo -e "${ORANGE}[!]${ENDCOLOR} $time_detected ARP_SPOOF for $spoofed_ip detected" >> /var/log/shield.log
# spoofing MAC number is not logged for project scope and consistency of log entry # Further work (eg. arp -h) might be checked separately
done

# The first sort-uniq pair is to eliminate all duplicate pair of ip/mac combination, since the arp is taken at two point of time
# The second sort-uniq pair uses -c to count only the ip address. 
# If there is no spoofing, there should not be a repeat (hence quantity is maximum one), since each IP should only be showing up once as each mac number
# If there is more than one mac number for different IP, this is indicative (but not a hundred percent guaranteed) of spoofing

rm arp_listing
rm spoofed_ip_list
rm arp_ip_summary
}

function reality_stone_defence()
{
interval=30
docdir_additional_threshold=10
file_count_initial=$(tree | wc -l)
sleep $interval
file_count_final=$(tree | wc -l)
time_to_print_timeonly=$(sudo timedatectl | grep "Local time" | awk '{print $5}')
time_to_print_dateonly=$(sudo timedatectl | grep "Local time" | awk '{print $4}')
time_to_print="$time_to_print_dateonly/$time_to_print_timeonly"
file_count_difference=$(expr $file_count_final - $file_count_initial) # CHECK AGAIN
# Condition, have tree installed. Logically it is inhuman to create so many files at a very short period, assume half a minute window for illustration purpose

if [ "$file_count_difference" -ge "$docdir_additional_threshold" ]; then # essentially will alert if within 30 seconds, 10 or more files or directories are created
	echo "A lot of files have been created for this time interval" 
	echo "The number of additional file/directory within half a minute period: $file_count_difference "
	sudo echo -e "${RED}[!]${ENDCOLOR} $time_to_print FILE_FLOOD from REMOTE_IP detected" >> /var/log/shield.log
else
	echo "" # Indicating that nothing is notable
fi
reality_stone_defence
}

function time_stone_defence()
{
increment=15 # can be changed according to attacker wish, this script would check every 15 seconds
time_now=$(sudo timedatectl | grep "Local time" | awk '{print $4,$5}')
time_now_epoch=$(date -d "$time_now" +'%Y-%m-%d %H:%M:%S' | date -f - +'%s')
sleep $increment
time_should_be=$(expr $time_now_epoch + $increment)
time_system=$(sudo timedatectl | grep "Local time" | awk '{print $4,$5}')
time_to_print_timeonly=$(sudo timedatectl | grep "Local time" | awk '{print $5}') # For consistency of logging, only time is taken, excluding date
time_to_print_dateonly=$(sudo timedatectl | grep "Local time" | awk '{print $4}')
time_to_print="$time_to_print_dateonly/$time_to_print_timeonly"
time_system_epoch=$(date -d "$time_system" +'%Y-%m-%d %H:%M:%S' | date -f - +'%s')
echo "Current Time is: $time_system_epoch"
echo "Current Time should be: $time_should_be"

if [ "$time_system_epoch" == "$time_should_be" ]; then
  echo "Everything is fine, time is as it should be"
else
  echo "Someone has tampered with the fabric of time"
  sudo echo -e "${GREEN}[!]${ENDCOLOR} $time_to_print TIME_CHANGE from REMOTE_IP detected" >> /var/log/shield.log
fi
time_stone_defence
}

function main_console()
{
echo -e "
===========================================================================
${underline}Please choose an infinity stone${nounderline}
${RED}Input A for Mirror Dimension Defence                      (Reality Stone)${ENDCOLOR}
${ORANGE}Input B for Arpspoof Defence                                 (Soul Stone)${ENDCOLOR}
${PURPLE}Input C for Brute Force Defence                             (Power Stone)${ENDCOLOR}
${BLUE}Input D for Port Scan Defence                               (Space Stone)${ENDCOLOR}
${GREEN}Input E for Time Distortion Defence                          (Time Stone)${ENDCOLOR}
${YELLOW}Input F for Riddleware Defence                               (Mind Stone)${ENDCOLOR}
Input G for Terminating Process/Script              (Avengers Dismissed!)
==========================================================================="
read ACTION
case $ACTION in 
A|a)
	reality_stone_defence
	sleep 1
	main_console
;;
B|b)
	soul_stone_defence
	sleep 1
	main_console
;;
C|c)
	power_stone_defence
	sleep 1
	main_console
;;
D|d)
	space_stone_defence
	sleep 1
	main_console
;;
E|e)
	time_stone_defence
	sleep 1
	main_console
;;
F|f)
	mind_stone_defence
	sleep 1
	main_console
;;
G|g)
	sleep 0.5
	echo "I can do this all day"
	sleep 0.5
	echo "... but now is the end of the day"
	exit
;;
*)
	echo "Kindly choose a valid action only:'A/B/C/D/E/F/G/H' !!!"
	sleep 1
	main_console
;;
esac
}

# Project Banner

echo -e "\e[31m ____   ___   ____       ____ _   _ _____ ____ _  _______ ____  "
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
sleep 1
echo "Student Code  		:s10"
sleep 1
echo "Class Code    		:CFC090423"
sleep 1
echo "Lecturer Name 		:Wei Chea"
echo -e "\e[0m"
sleep 1.5

shield_banner
function file_exist_check()
{
if [ -f $1 ]
then 
	#echo "File: $1 exists" # silent mode, can be activated for checking/testing
	echo ""
else 
	sudo touch $1
	sudo chmod 666 $1 # Without this, not there might be permission issue
	echo ""
	#echo "File: $1 created" # silent mode, can be activated for checking/testing
fi
}

file_exist_check /var/log/shield.log

sleep 1.5
main_console
