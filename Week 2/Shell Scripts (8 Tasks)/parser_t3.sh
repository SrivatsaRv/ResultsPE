OGFILE="/Users/srivatsa.intern/Desktop/access.log" # NGINX LOGFILE
echo""
echo "3.Top requests:"
echo "==============="
echo""
echo "*top 5 requests by upstream_ip:"
cat $LOGFILE \
| awk '{print $9}'\
| sort \
| uniq -c \
| sort -r \
| head -5


echo""

echo "*top 5 requests by host:"
cat $LOGFILE \
| awk '{print $NF}'\
| sort \
| uniq -c \
| sort -r \
| head -5

echo""


echo "*top 5 requests by bodyBytesSent:"
cat $LOGFILE \
| awk '{print $10}'\
| sort \
| uniq -c \
| sort -r \
| head -5

echo""

echo "*top 5 requests by path:"
cat $LOGFILE \
| awk '{print $5}'\
| sort \
| uniq -c \
| sort -r \
| head -5


echo""

echo "*top 5 requests with the highest response time"
cat $LOGFILE \
| awk '{print $8}'\
| sort \
| uniq -c \
| sort -r \
| head -5

echo""

echo "*get top 5 requests returning 200/5xx/4xx per host"
cat $LOGFILE \
| awk '{print $7}'\
| sort \
| uniq -c \
| sort \
| head -5

echo""


