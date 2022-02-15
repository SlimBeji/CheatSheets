# ================= Packages ===============
# install a local deb package
apt install ./my_package.deb

# update the packages cache from the repository
apt-get update

# upgrade the packages
apt-get upgrade

# search for something similar
apt-cache search mypackage

# show details about this exact package
apt-cache show mypackage

# install a package
apt-get install package

# remove unused packages
apt-get autoremove

# delete the package and config files
apt-get purge package

# delete all packages related to package
apt-get purge package*

# add a repository.
add-apt-repository ppa:eugenesan/ppa

# remove a repo
add-apt-repository --remove ppa:pack/ppa

# search for sources
grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/*

# list all packages installed
dpkg -l

# =========== Tools ===============
# download file (-c resume download, --background)
wget --background -c http://link

# show time
date

# open the manual of mkdir or anu other commands
man mkdir

# run the command,  detattached to the console (better than &)
nohup cmd

# execute file in current shell
source file

# execute in new shell and paste result in current shell (-x for debug)
bash -x file

# same as bash but with less features
sh file

# reload shell
exec $SHELL

# adds the alias slim
nano .bashrc >> alias slim='df -h'
