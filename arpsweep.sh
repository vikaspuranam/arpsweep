#/bin/bash
echo "Enter First Three Octets ex: 192.168.0. finish with a dot"
read iprange
for host in $(seq 1 254);
do arping -c 1 $iprange$host |grep "bytes from" |cut -d " " -f5;
done;
