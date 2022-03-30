#!/bin/bash
content=""
if [ "$1" == "" ]
then
	echo "=======>>>>NETWORK BYTES TRANSLATOR<<<<======="
	echo "        Usage: $0 <FILE>"
else
for i in $(cat $1); do
	content+=$i;
done;
curl -X 'GET' -H 'Host: hpd.gasmi.net' 'https://hpd.gasmi.net/api.php?data='$content'&format=text'
fi

