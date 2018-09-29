# dnsmasq-blocklist

If your router or internet gateway uses dnsmasq, and you want to block certain domains (e.g. those distributing malware), you can tell dnsmasq to return NXDOMAIN for any hosts within that domain. This is better than returning a fake IP address (like 127.0.0.1 or 0.0.0.0), as your browser will just give up trying to contact that host, rather than trying and failing to connect to the fake address.

This script outputs some lines you can put in your dnsmasq configuration file.

## Usage
```
bash generate.sh | sort | uniq > list.txt
```

References:
1. Telling dnsmasq to return NXDOMAIN: http://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2013q3/007513.html
2. The list of block list URLs is from lines 1092-1098 of the Pi-Hole installation script: https://github.com/pi-hole/pi-hole/blob/993beab3b7bd2dab01dffd4f84f3b0f6a5c3a190/automated%20install/basic-install.sh
