# Steven Black
curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts|grep 0.0.0.0|grep -v "#"|sed 's/0\.0\.0\.0 \(.*\)/server=\/\1\//'|grep -v "server=/localhost/"|grep -v "server=/0.0.0.0/"|grep -v "server=/127.0.0.1/"
# Malware Domains
curl https://mirror1.malwaredomains.com/files/justdomains|sed 's/\(.*\)/server=\/\1\//'|grep -v "server=/localhost/"|grep -v "server=/0.0.0.0/"|grep -v "server=/127.0.0.1/"
# Cameleon
curl http://sysctl.org/cameleon/hosts|grep 127.0.0.1|sed 's/127\.0\.0\.1[[:blank:]]\+\(.*\)/server=\/\1\//'|grep -v "server=/localhost/"|grep -v "server=/0.0.0.0/"|grep -v "server=/127.0.0.1/"
# Zeus Tracker
curl "https://zeustracker.abuse.ch/blocklist.php?download=domainblocklist"|grep -v "#"|sed 's/\(.*\)/server=\/\1\//'|grep -v "server=/localhost/"|grep -v "server=/0.0.0.0/"|grep -v "server=/127.0.0.1/"
# Discon Track
curl https://s3.amazonaws.com/lists.disconnect.me/simple_tracking.txt|grep -v "#"|sed 's/\(.*\)/server=\/\1\//'|grep -v "server=/localhost/"|grep -v "server=/0.0.0.0/"|grep -v "server=/127.0.0.1/"
# Discon Ad
curl https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt|grep -v "#"|sed 's/\(.*\)/server=\/\1\//'|grep -v "server=/localhost/"|grep -v "server=/0.0.0.0/"|grep -v "server=/127.0.0.1/"
# HostsFile
curl https://hosts-file.net/ad_servers.txt|tr -d $'\r'|grep 127.0.0.1|sed 's/127\.0\.0\.1[[:blank:]]\+\(.*\)/server=\/\1\//'|grep -v "server=/localhost/"|grep -v "server=/0.0.0.0/"|grep -v "server=/127.0.0.1/"