#random comm
name=/etc/hosts"
n=0
while read line; do
  IP=$(echo $line | awk '{ print $1 }')
  re="^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
  if [[ $IP =~ $re ]]; then
        if ! [[ $IP == "127.0.0.1" ]];then
                echo "$n $line"
                n=$((n+1))
        fi
  fi
done < $name

