
NGINXLOG="/Users/srivatsa.intern/Desktop/access.log" # NGINX LOGFILE

highest_requested_host(){
awk '{print $NF}'|sort | uniq -c | sort -r
}

highest_requested_upstream_ip(){
awk '{print $9}'|sort | uniq -c | sort -r
}

highest_requested_path()
{
awk '{print $5}'|sort | uniq -c | sort -r
}

get_date(){
grep '12/Feb/2021'
}

top_ele(){
head -1
}




set_highest_requested_host(){
echo ""
echo "1.Summary stats for the day-week-month (NGINX LOG FILE)"
echo "========================================================="
echo ""
echo "---------------------------------------"
echo "1.1 - highest requested host:"
echo "---------------------------------------"
cat $NGINXLOG | highest_requested_host | top_ele
echo " "
}

set_highest_requested_upstream_ip(){
echo "-------------------------------------"
echo " 1.2 - highest requested upstream ip:"
echo "-------------------------------------"
cat $NGINXLOG   | highest_requested_upstream_ip  | top_ele
echo " "
}


set_highest_requested_path(){
echo "---------------------------------------"
echo " 1.3 - highest requsted path:"
echo "---------------------------------------"
cat $NGINXLOG  | highest_requested_path | top_ele
echo " "
}

set_highest_requested_host
set_highest_requested_upstream_ip
set_highest_requested_path
