# ========= Global configuration ===============
# set the Git username
git config --global user.name "Slim"

# set the Git mail
git config --global user.email "me@me.me"

# Set vim as default Git editor
git config core.editor vim

# Open config file. e for editor. --global for global git config
git config --global -e

# add an alias hist (git hist <=> git log --oneline)
git config --global alias.hist "log --oneline"

# unset a configuration
git config --unset alias.hist

# set p4merge as merge tool
git config --global diff.tool p4merge

# disable prompting
git config --global difftool.prompt false

# set p4merge as merge tool
git config --global merge.tool p4merge

# disable prompting
git config --global mergetool.prompt false

# ========= Global configuration ===============
# Clone a repository into a new directory
git clone  https://github.com/../*.git

# Create empty git repository. omit project name for existing folder
git init project

# get list of files tracked by git
git ls-files

# get tree HEAD blobs. r for recursive. HEAD can be an id.
git ls-tree -r HEAD

# cat the commit object. use blob for blob objects
git cat-file commit commitId

# add a file to the index
git add file

# update tracked files. ignore untracked files
git add -u

# add recursively files in the working directory
git add .

# stage hunks interactive
git add -p

# unstatge hunks interactive. without --patch unstage all
git reset --patch

# rename/move file and add to the index
git mv file1 file2

# delete the tracked file
git rm file

# remove untracked files, f for force, i for interactive
git clean -f

# ===================Status =====================
# Get the status of the git repository
git status

# list commits: --oneline for inline; --graph for graph display
git log --oneline --graph

# show only commits in between the commit ids
git log ae6f872...761b911

# commit in the last three days
git log --since="3 days ago"

# show commits involving the file
git log -- file

# show commits involving the file going through renames
git log --follow file

# history of where HEAD is pointing
git reflog

# show the corresponding commit object
git show commitid

# check who did what modifications
git blame file

# grep for only tracked files. --cached to limit to staging area
git grep --cached pattern

# search for a pattern at a commit position.
git grep pattern commitId

# compares wd and sa. use -- file to restrict to a file
git diff -- file

# compares sa and last commit
git diff --staged HEAD

# compares the wd and last commit
git diff HEAD

# compares two pointed states. can use comitts ids
git diff HEAD^ Origin/master

# compares wd and sa with the defined difftool
git difftool

# search bug origin. use ids bad and good to look in between
git bisect start [bad] [good]

# start searching  (after git bisect start)
git bisect next

# indicate the bug is present
git bisect bad

# indicate the bug is absent
git bisect good

# ========== Commit, Stash, Worktree and Tag ===========
# commit without opening the text editor
git commit -m "some comments"

# add to staging area then commit
git commit -am "some comments"

# change the message of last commit
git commit --amend -m "new message"

# ammend last commit. keep message. apply new sa changes.
git commit --amend --no-edit

# remove and store modification from staging area
git stash save  "my stash"

# use -u for even untracked files
git stash save -u "my stash"

# stash a specific file
git stash push file

# list all stashes
git stash list

# apply specific stash stash@{id}. without id apply last stash
git stash apply id

# drop the last stash (delete), stash_id is optional
git stash drop stash_id

# apply the stashes and drop them
git stash pop

# delete all the stashes
git stash clear

# Create a branch , apply the stashes, drop the stashes
git stash branch newbrach

# show the stash (-p is to visualaze)
git stash show id -p

# Show stash with difftool
git difftool stash@{id}

# create a branch in a diffrent folder.
git worktree add folder/branch

# remove deleted worktrees from branches
git worktree prune

# create a tag, -m for comment -a for annotated
git tag -a v1.0 -m "Release 1.0"

# list all the tags. => git checkout mytag
git tag

# delete a tag
git tag --delete myTag

# tag a previous commit using the commit id
git tag -a v0.9 commitId

# move the tag to the new commitId, f for force
git tag -a -v0.8 -f commitId

# ==================== Rollbacks ==================
# move branch HEAD to state b without altering current wd/sa
git reset --soft b

# move branch HEAD to state b. default --mixed. alters only sa
git reset b

# move branch HEAD to state b. alter wd/sa. modifications lost
git reset --hard b

# HEAD^ points to the previous commit. default is HEAD
git reset --hard HEAD^

# moving branch HEAD skipped. wd != sa (--mixed)
git reset file

# clean current branch and remove untracked files
git clean -f

# reset file wd state to the indicated state. (git restore)
git checkout state -- file

# create detached state pointing to the commit_id. changes wd
git checkout commit_id

# revert some commits (keep it in the history contrary to reset)
git revert commitid

# revert several commits
git revert oldcommit^..newcommit

# =============== Branch and Merging ==================
# list braches (-a for all including remote)
git branch -a

# create a branch
git branch mybranch

# switch from current branch to mybranch
git checkout mybranch

# create and switch to new branch
git checkout -b mybranch

# rename branch oldbranch to newbranch
git branch -m oldbranch newbranch

# delte new branch (-D = --delete --force = -df)
git branch -d newbranch

# create br2 as a copy of br1
git branch br1 br2

# compares two branches
git diff br1 br2

# merge current branch with a_branch (linear history)
git merge a_branch

# --no-ff no fast forwarding. commits not applied to target
git merge a_branch --no-ff

# abort conflicting merge
git merge --abort

# check the braches merged with current branch
git branch --merged

# check the branch not merged with current branch
git branch --no-merged

# use the defined merge tool
git mergetool

# transfer some comits to current branch
git cherry-pick d356940 de966d4

# apply master changes to current branch before branch changes
git rebase master

# abort the last rebase with conflicts
git rebase --abort

# continue the rebase after solving the conflicts
git rebase --continue

# interactif: drop to drop commits, squash to merge commits
git rebase -i

# =============== Remote Repository ==================
# point the remote directory to the url and name it
git remote add origin http_link_or_git_link

# edit the remote repo url
git remote set-url origin http/ssh

# list remote branches
git remote -v

# remove the origin refs from local repo
git remote rm origin

# update the references from the remote directory, NO push
git fetch origin master

# fetch all branches, -–prune to update remote
git fetch –all --prune

# update the working directory with remote (fetch + merge)
git pull origin master:local

# create copy of remote branch
git checkout remote_branch

# rebase during pull
git pull --rebase origin master

# git pull for all branches
git pull --all

# update file from remote branch
git checkout origin/master file

# update remote repo. --force-with-lease gives changes warnings
git push --force-with-lease origin master

# update all tags
git push origin master --tags

# delete branch dev , tag etc …
git push -d origin dev

# Sending options to Gitlab/Github … with -o
git push origin dev -o merge_request.create
