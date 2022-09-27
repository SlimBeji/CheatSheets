# ================= Networking ===============
# get IP
ifconfig

# get the IP corresponding to the hostname
host google.com

# add a host name (127.0.0.1 localhost)
nano /etc/hosts

# scan connected machines
nmap -sP 192.168.1.*

# test port
telnet localhost 5433

# open conn: -u udp, -t tcp, -a all, -n explicit num, p show pid
netstat -paunt

# open connections with LISTEN status
netstat -l

# list user using files, -n namespace, tcp 80 for protocol+port
fuser -n tcp 80

# list open files, -i for internet port 22; grep LISTEN to filter
lsof -i:22

# ssh logging
ssh user@host -p 22

# generate a public and private keys (use -f to specify file)
ssh-keygen -t rsa - f ~/.ssh/company_id_rsa

# copy public key to the server authorized_key of the server
ssh-copy-id -i id_rsa.pub login@ip

# run ssh agent
eval `ssh-agent`

# register key
ssh-add ~/.ssh/id_rsa

# copy to the server (-P to specify port vs -p for ssh)
scp file1 use@ip:dir\file2

# connect to ftp
ftp ftp.debian.org

# put to upload, get to download, rm/delete to delete
ftp> put file / get file / delete file

# use ! run commands.txt inside the local folder, not ftp folder
ftp> !ls / !cd

# secure ftp using ssh; prefix with o like oPort to specify port
sftp -oPort=27401 mateo21@serveur

# add -e to specify some ssh options
rsync file1 user@ip:dir -e "ssh -p 12473"

# list firewall rules
iptables -L --line-numbers

# apply drop policy to INPUT group
iptables -P INPUT DROP

# add to INPUT group, pos 1 -s source -p protocol --destination-port port -d destination -j action (Accept)
iptables -I INPUT 1 -s ip -p prot --dport port -j action -d destination

# delete the 5th rule in group INPUT
iptables -D INPUT 5

# save a copy of firewall
iptables-save > iptables.save

# restore firewall rules from a copy
iptables-restore < iptables.save
