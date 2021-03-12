echo "TASK - 4"
echo "-----------------------------------------"
echo "PRINT STATUS CODES RECEIVED BY EACH HOST"
echo "-----------------------------------------"
echo "HOST:CODE"
awk '{ print $15 " " $7 }' access.log |sort | uniq -c | sort -rn
