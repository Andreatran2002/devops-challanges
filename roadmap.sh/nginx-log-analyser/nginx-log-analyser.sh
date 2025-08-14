#!/bin/bash
GREEN="\033[32m"
RESET="\033[0m"
NGINX_LOG_FILE=${1:-access_nginx.log}

validate(){
  if [ -z "$NGINX_LOG_FILE" ]; then 
    echo "Require file parameter !!"
    return 1
  fi

  if [ ! -f "$NGINX_LOG_FILE" ]; then 
    echo "File not exist !!"
    return 1
  fi
  return 0
}

print(){
    echo -e "$GREEN$1 $RESET"
}


getMostRequest(){
    print "Top 5 IP addresses with the most requests"
    awk '{count[$1]++} END{ for (w in count )print w " - " count[w] " requests" }' $NGINX_LOG_FILE | sort -k3nr | head -n $1
}

getMostRequestPath(){
    print "Top 5 request paths with the most requests"
    awk '{count[$7]++} END { for (w in count) print w " - " count[w] " requests"}' $NGINX_LOG_FILE | sort -k3nr | head -n $1
}

getMostResponseStatusCode(){
    print "Top 5 response status codes with the most requests"
    awk '{if ($9 ~ /^[0-9]+$/) count[$9]++} END { for (w in count) print w " - " count[w] " requests"}' $NGINX_LOG_FILE | sort -k3nr | head -n $1
}

getMostUserAgent(){
    print "Top 5 user agents with the most requests"
    awk 'BEGIN{ FS = "\"-\""} $2 != "" { count[$2]++} END { for ( w in count ) print w " - " count[w] " requests " }' $NGINX_LOG_FILE | sort -k3nr | head -n $1
}

analyse(){
    getMostRequest 5
    getMostRequestPath 5
    getMostResponseStatusCode 5
    getMostUserAgent 5
}

main(){
    if validate $FILE_PATH ; then 
        analyse
    else
        echo "File is invalid"
    fi
}

main