#!/bin/bash

 # Color directory
CD="$HOME/.Xresources"

# Fetch the Colors
BG=$(cat ${CD} | grep -i background | tail -c 8)
FG=$(cat ${CD} | grep -i foreground | tail -c 8)

BLACK=$(cat ${CD} | grep -i color8 | tail -c 8)
RED=$(cat ${CD} | grep -i color9 | tail -c 8)
GREEN=$(cat ${CD} | grep -i color10 | tail -c 8)
YELLOW=$(cat ${CD} | grep -i color11 | tail -c 8)
BLUE=$(cat ${CD} | grep -i color12 | tail -c 8)
MAGENTA=$(cat ${CD} | grep -i color13 | tail -c 8)
CYAN=$(cat ${CD} | grep -i color14 | tail -c 8)
WHITE=$(cat ${CD} | grep -i color15 | tail -c 8)

# Fonts
FONT1="-gohu-gohufont-medium-r-normal--11-80-100-100-c-60-iso8859-1"
FONT2="-lucy-tewi-medium-r-normal--11-90-75-75-p-58-iso10646-1"
FONT3="-wuncon-siji-medium-r-normal--10-100-75-75-c-80-iso10646-1"
FONT4="-benis-lemon-medium-r-normal--10-110-75-75-m-50-iso8859-1"
FONT5="-nil-profont-medium-r-normal--10-110-72-72-c-60-iso8859-1"
FONT6="-kakwa-kakwafont-medium-r-normal--12-120-72-72-c-60-iso8859-1"

# Panel 
#PW=1342
PH=30
#PX=12
#PY=12

#Network interfaces
ETHERNET="enp0s7"
WLAN="wlan0"

#Actions
VOLT="amixer sset Master toggle"
VOLU="amixer sset Master 5%+"
VOLD="amixer sset Master 5%-"
TMUS="mpc toggle"
NMUS="mpc next"
POW="~/.config/i3/bar_pop"
SNDCTRL="/usr/bin/pavucontrol &"
NETCTRL="/usr/bin/wicd-gtk &"

# Functions

#Workspace number 

ws(){
	ws=$(i3-msg -t get_outputs | sed 's/.*"current_workspace":"\([^"]*\)".*/\1/')
	echo "%{F$RED}${ws}"
}

music() {
    music=$(n=$(mpc current); if [ -z "$n" ] ; then echo; else echo " $n"; fi)
	echo "%{F$GREEN}${music}"
}

cpu(){
	cpu=$(mpstat -P ALL 1 1 | awk '(NR>11) {print $3+$5}' | paste -d " " - - - -)
	echo "%{F$YELLOW} ${cpu}"
}
	
net(){
	#ipnet=$(ip=$(/sbin/ifconfig | grep $ETHERNET -A 5 | sed '/inet addr:/!d;s/.*addr:\([0-9.]*\).*/\1/'); if [ ! -z "$ip" ]; then echo "$ip"; else echo "No Connection";fi)
	#ip=$(ip=$(/sbin/ifconfig | grep $WLAN -A 5 | sed '/inet\ addr/!d;s/.*addr:\([0-9.]*\).*/\1/'); if [ ! -z $ip ]; then echo $ip ;else ip=$(/sbin/ifconfig | grep $ETHERNET -A 5 | sed '/inet addr:/!d;s/.*addr:\([0-9.]*\).*/\1/'); if [ ! -z "$ip" ]; then echo "$ip"; else echo "No ip";fi;fi)
	ip=$(ip addr show ${ETHERNET}|grep inet|awk '{print $2}'|cut -d/ -f1)
	ping=$(pn=$(timeout .8 ping 8.8.4.4 -c 1 -s 24 | sed '2!d;s/.*time=\([0-9]*\).*/\1/'); if [ -z $pn ] ; then echo "No Connection"; else echo "${pn}ms"; fi)
	echo "%{F$GREEN} ${ip}   ${ping}"
}

ram(){
	ram=$(free -h | awk '/\-\/+/ {print $3}')
	echo "%{F$YELLOW} ${ram}"
}

temp(){
  temp=$(sensors | grep temp1 | sed '1d;s/.*+\([0-9]*\).*/\1/')
	echo "%{F$YELLOW} ${temp}C"
}

clock(){
  clock=$(date "+%a %d %b %Y  %H:%M")
	echo "%{F$RED}${clock}"
}

vol(){
  vol=$(amixer get 'Master' | grep Mono: | sed 's/ *Mono: .* \[\([^ ]*\)\] \[[^ ]*\] \[\([^ ]*\)\]/\1 \2/;s/.*off/off/;s/\([^ ]*\).*/\1/')
	echo "%{F$YELLOW} ${vol}"
}

pow(){
	FOLD="/sys/class/power_supply"
	val=$(if [ -d $FOLD/BAT0 ]; then cat $FOLD/BAT0/capacity; fi)
	pow=$(if [ $(cat $FOLD/AC0/online) = 1 ]; then if [ ! -d $FOLD/BAT0 ]; then echo ""; else echo "";fi; else if [[ $val < 12 ]]; then echo ""; else if [[ $val > 90 ]]; then echo ""; else echo "";fi; fi;fi)
	echo "%{F$YELLOW}${pow}"
}

while :; do 	
	 echo "   $(ws)  %{A1:$TMUS:}%{A3:$NMUS:}$(music)%{A}%{A}%{c}$(cpu)   $(temp)   $(ram)  $(pow)%{r}%{A:$NETCTRL:}$(net) %{A}  %{A:$VOLT:}%{A4:$VOLU:}%{A5:$VOLD:}%{A3:$SNDCTRL:}$(vol) %{A}%{A}%{A}%{A}  $(clock) %{A:$POW:}   %{A} "
	 sleep .5
done | lemonbar -g ${PW}x${PH}+${PX}+${PY} -f "$FONT3" -f "$FONT5"  -B "$BG" -F "$FG" -p -d  | \
    while :; do read line; eval $line; done &
