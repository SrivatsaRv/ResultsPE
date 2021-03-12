NGINXLOG="/Users/srivatsa.intern/Desktop/access.log"
echo "TASK-5"
echo "---------------------------------------------"
echo "Get All The Requests Made in Last 10 Minutes:"
echo "---------------------------------------------"
echo""
cat $NGINXLOG | awk "/^$(date -date= "-10 min" "+%b %_d %H:%M")/{p++} p" | head -5 | sort  | uniq -c 
