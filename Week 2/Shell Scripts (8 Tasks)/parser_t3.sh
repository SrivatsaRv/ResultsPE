NGINXLOG="/Users/srivatsa.intern/Desktop/access.log" # NGINX LOGFILE
echo""
echo "3.Top Requests:"
echo "--------------------------------------------------"
echo " 3.1 - Top 5 Reuqests From Upstream IP Address:"
echo "--------------------------------------------------"
cat $NGINXLOG | awk '{print $9}'| sort | sort -r | head -5| uniq -c 
echo ""

echo "----------------------------------"
echo " 3.2 - Top 5 Reuqests From Hosts:"
echo "----------------------------------"
cat $NGINXLOG| awk '{print $NF}'| sort | sort -r | head -5 | uniq -c 


echo""

echo "----------------------------------------"
echo " 3.3 - Top 5 Requests By BodyBytesSent:"
echo "----------------------------------------"
cat $NGINXLOG| awk '{print $10}'| sort | sort -r | head -5 | uniq -c 
echo""

echo "----------------------------------------"
echo " 3.4 - Top 5 Requests From Path:"
echo "----------------------------------------"
cat $NGINXLOG | awk '{print $5}'| sort | sort -r | head -5 | uniq -c 

echo""
echo "-----------------------------------------------------"
echo " 3.5 - Top 5 Requests Having Highest Response Time:"
echo "-----------------------------------------------------"
cat $NGINXLOG | awk '{print $8}'| sort | sort -r | head -5 | uniq -c 
 
echo""
echo "------------------------------------------------------"
echo " 3.6 - Top 5 Requests Returning 200/5xx/4xx Per Host:"
echo "------------------------------------------------------"
cat $NGINXLOG | awk '{print $7}'|sort | sort -r | head -5 | uniq -c 
echo""


