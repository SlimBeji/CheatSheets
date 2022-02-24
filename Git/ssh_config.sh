# https://stackoverflow.com/questions/3860112/multiple-github-accounts-on-the-same-computer
# How to use multiple github accounts on same machine

# 1 - Generate new ssh key
ssh-keygen -t rsa -f ~/.ssh/flitter_id_rsa

# 2 - create a config file inside ~/.ssh
nano ~/.ssh/id_rsa
# Host github.com
#     HostName github.com
#     User git
#     IdentityFile ~/.ssh/id_rsa
#
# Host gitlab.com
#     HostName gitlab.com
#     User git
#     IdentityFile ~/.ssh/id_rsa
#
# Host github.com-flitter
#     HostName github.com
#     User git
#     IdentityFile ~/.ssh/flitter_id_rsa

# 3 - add public ssh-key in Gitlab, Github etc ...
cat ~/.ssh/flitter_id_rsa.pub

# 4a - clone a repo
# update host from github.com to github.com-company_name
git clone github.com-flitter:someorg/somerepo.git

# 4b - create a new repo / update existing repo
git init
git config user.name "Company User Name"
git config user.email "slim@flitter.fr"
