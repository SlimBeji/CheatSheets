# =================== Git Flow ======================
# =================== New Features ==================
# create a new feature branch from dev branch and add features
git checkout -b features/something dev

#Apply some modifications

# go back to dev branch
git checkout dev

# merge dev branch with feature branch
git merge --no-ff features/something

# delete finished feature branch
git branch -d features/something

# push to remote dev branch
git push origin dev

# =================== Releases ==================
# create a release branch
git checkout -b release-1.2 dev

#Apply some modifications

# switching back to master
git checkout master

# merging master with release branch
git branch --no-ff relesea-1.2

# tag x.x previous commit
git tag -a 1.2

# switching back to dev
git checkout dev

# merging dev with release
git merge --no-ff release-1.2

# delete release branch
git branch -d release-1.2

# =================== Hotfixes ==================
# create a hotfix branch
git checkout -b hotfix-1.2 master

#Apply some modifications

# switch to master after fixing bugs
git checkout master

# merge master with hotfix branch
git merge --no-ff hotfix-1.2

# tag x.x.x
git tag -a 1.2.1

# switch to dev branch
git checkout dev

# merge dev with hotfix
git merge --no-ff hotfix-1.2.1

# delete hotfix
git branch -d hotfix-1.2.1
