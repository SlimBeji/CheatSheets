# ============= System and Planification ===============
# restart the service httpd (also start & stop)
service httpd restart

# list all services
sudo systemctl list-units --type=service

# enable the service mongod (on restart)
sudo systemctl enable mongod

# disable the service mongod
sudo systemctl disable mongod

# reload service
sudo systemctl reload nginx

# reload all services
sudo systemctl daemon-reload

# remove the failed status, works without specifying my_service
sudo systemctl reset-failed my_service

# show dynamic list of process (h help, q quit)
top

# list process running in the background
jobs

# static list of process
ps -ef

# show list of process for a user
ps -u user

# kill list of process (pid not process name)
kill pid1 pid2 pid3

# kill the process even without reponse
kill -9 pid

# kill all the process (process name)
killall process_name

# select application to kill with mouse
xkill

# e to edit crons (1-3: interval; 1,2 set; */3 multiple)
crontab -e

# l to list crons
crontab -l

# to delete all crons
crontab -r
