#!/bin/bash

#Function to make us anonymous
function MAKEANON {
	
	perl nipe.pl restart
	ANON
	}


#Connecting to the remote server should be automated.
#Function to check our anonymity.
function ANON {
	
	if [ -z "$(geoiplookup $(curl -s ifconfig.me) | grep -i NG)" ]
	then
		echo " [*] You are Anonymous"
	else 
		echo " [!] You are not Anonymous"
		MAKEANON
	fi
	
	}
ANON
# Automations on the remote server, should include:
# Scanning targets (using nmap)
# Getting information (using Whois)

sshpass -p ':MjsbBaU30OtuZEh' ssh -o StrictHostKeyChecking=no root@156.67.208.189 'nmap -sV -sS -sC 8.8.8.8 | grep -i open > nmapscan.txt' 
sshpass -p ':MjsbBaU30OtuZEh' ssh -o StrictHostKeyChecking=no root@156.67.208.189 'whois 192.168.0.1 | grep -i country > whois.txt'

# All collected data should be stored on the local host.
