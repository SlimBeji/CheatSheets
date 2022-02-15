# ================= Users and Permission ===============
# Show list of logs
w

# become super user and stay
sudo su

# add slim as user
adduser slim

# change the current session password
passwd slim

# delete user and remove home directory
deluser --remove-home slim

# add a group
addgroup humans

# -g change group and set humans as group
usermod -g humans slim

# affect several groups to user, -a to append
usermod -aG gr1,gr2,gr3 slim

# delete group
delgroup humans

# set slim as owner of the file
chown slim file

# set humans as group
chgrp humans file

# set humans as group and slim as file; R for recursive
chown -R slim:humans file

# = give right, + add right, - remove right
chmod u=rwx,g=r,o=- rapport.txt

# add execution right to everybody (or a+x: a for all)
chmod +x rapport.txt

# change the rights to a file
chmod 777 file

# list users
cat /etc/passwd

# list groups
cat /etc/group
