This Marvel-Themed project consists of three parts:
+ An Attacking Script: gauntlet.sh
+ A Defending Script: shield.sh
+ A Simulation of Ransomware but a quiz: mjolnir.sh

For every attack (represented by an infinity stones), I tried to think of the best detection method.

The Six Corresponding Attack and Defence are:
1. Space: Port Scan  
     Attack: Nmap syn scan all ports of specified hosts  
     Defence: Capture packet s using tcpdump, filter for syn flags and count by IP number. Large amounts (default 100) would log an alert  
     Notes: Defense function has to be started prior to / on stand-by during attack  
2. Soul: ARP Spoof  
     Attack: Impersonate another host IP to target host via dsniff arpspoof command  
     Defence: Generate ARP tables at two points of time, via text manipulation, filter a single IP that has 2 mac number across time. This will log an alert if happens  
3. Power: Brute Force  
     Attack: Utilize hydra to brute force attack using a set of passwords/usernames (unpw.lst in this repository)  
     Defence: Parses the auth.log file and via text manipulation looks for large amount of failed login (default is 100) that would log an alert  
4. Time: Time Change  
     Attack: Change target time by switching off timesyncd service and then set time to equal specified epoch time  
     Defence: Check current epoch time at two points of time. If first epoch time incremented by 15 seconds does not equal the second epoch time check, it will log an alert  
     Notes: Defense function has to be started prior to / on stand-by during attack  
5. Mind: Riddle-ware  
     Attack: Simulates a ransomware in terms of encoding files, but instead of monetary consideration, requires solving a quiz before files are decoded  
     Defence: Generate md5sum hash table at two points of time, then filter out repeated set of filename and hash. If the unfiltered list shows same file name with different hash, there is a change in file  
     Notes: The most complicated attack and might not work properly in different distros. For defence, directory to monitor have to be changed/named manually. mjolnir.sh have to be in current working directory.   
6. Reality: Mirror-Dimension  
     Attack: Combination of retrieving log files of the host (for information gathering purposes) and retrieve using scp, creating unnecessary sets of documents to discombobulate user  
     Defence: Generate list of files and directories via tree function, and count the number of files. If large number of files created in short period (default is 10 documents in 30 seconds), an alert will be logged  

Successful attacks are logged in /var/log/gauntlet.log or /var/log/shield.log  
The result of scanning and bruteforce attacks are saved in power_result and space_result after the script is run  
If the script does not exit properly, there might be temporary files remaining in current directory as the script only remove temporary files at the end  

Additional Info: 
This is a project to satisfy requirements of CFC course  
However, as I would like to maximize learning experience, I have gone beyond the scope required in the project  
Script is designed mainly for Kali Linux environment. Thus, there might be issues (display, functionality or otherwise) in other distros (eg. Ubuntu)  
