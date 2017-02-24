#!/bin/bash

availableColors[0]="31"
availableColors[1]="32"
availableColors[2]="33"
availableColors[3]="34"
availableColors[4]="35"
availableColors[5]="36"
availableColors[6]="37"
availableColors[7]="91"
availableColors[8]="92"
availableColors[9]="93"
availableColors[10]="94"
availableColors[11]="95"
availableColors[12]="96"
availableColors[13]="41"
availableColors[14]="42"
availableColors[15]="43"
availableColors[16]="44"
availableColors[17]="45"
availableColors[18]="46"
availableColors[19]="100"
availableColors[20]="101"
availableColors[21]="102"
availableColors[22]="103"
availableColors[23]="104"
availableColors[24]="105"
availableColors[25]="106"
availableColorsCnt=25


export IP_SUBNET=`ip addr show eth0 | grep "inet " | cut -d. -f3,4| \cut -d "/" -f1|  awk -F"." '{print $1, $2}'`

octet3=`echo $IP_SUBNET | cut -c -3`
octet4=`echo $IP_SUBNET | cut -c 3-6`
let "useColor = ($octet3 + $octet4 ) % $availableColorsCnt"

echo -e "The prompt color will be \e[${availableColors[useColor]}mLIKE THIS (availableColors[$useColor], which is ${availableColors[useColor]})\e[39m\e[49m"
echo "Now you do the export PS1 etc etc etc"

