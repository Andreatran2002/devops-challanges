GREEN="\033[32m"
RESET="\033[0m"
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $3 }')
MEMORY_USAGE_PERCENT=$(free -h | awk '{if (NR == "2") print 100*($3 / $2)}')
MEMORY_FREE_PERCENT=$(free -h | awk '{if (NR == "2") print 100*($4 / $2)}')
DISK_USAGE=$(df -h --total | grep total | awk '{print $5}' | tr -cd '0-9')
DISK_FREE=$(echo $DISK_USAGE | awk '{print 100 - $0}')

print(){
  echo -e "$GREEN$1 : $RESET$2 "
}
 
print "Total CPU Usage" $CPU_USAGE
print "Total Memory Usage(%)" $MEMORY_USAGE_PERCENT
print "Total Memory Free(%)" $MEMORY_FREE_PERCENT
print "Total DISK Usage(%)" $DISK_USAGE
print "Total DISK Free(%)" $DISK_FREE

print "Top 5 processes by CPU usage"
ps aux --sort=-%cpu | head -n 5 

print "Top 5 processes by Memory usage"
ps aux --sort=-%mem | head -n 5 

print "OS information "
print "- Kernel name" $(uname -s)
print "- Kernel version" $(uname -v)
print "- Nodename" $(uname -n)
print "- Uptime" "$(uptime -p)"
print "- Load average" $( uptime | awk ' {print $8 "-" $9 "-" $10 }' | tr -d ,)
