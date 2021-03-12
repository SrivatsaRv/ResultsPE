NGINXLOG="/Users/srivatsa.intern/Desktop/access.log" # NGINX LOGFILE
echo ""
echo "2.Total Requests Per Staus Code: (# of Requests Returning 404/401/502/504/500/200):"
echo "===================================================================================="
echo "  #  HTTP"
cat  $NGINXLOG | awk '{print $7}'| sort | uniq -c | sort 
#$7 is the column for status code reuqests.

