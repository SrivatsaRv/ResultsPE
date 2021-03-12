LOGFILE="/Users/srivatsa.intern/Desktop/access.log" # NGINX LOGFILE
echo "2.Total requests per status code"
echo "================================="
echo"" 
cat  $LOGFILE \
| awk '{print $7}'\
| sort \
| uniq -c \
| sort 

