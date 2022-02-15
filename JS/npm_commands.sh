# ==========nvm section=========
# list versions
nvm ls

# set default verions
nvm alias default stable

# installing a new verions
nvm install 15

# switching versions
nvm use 15

# removing version
nvm uninstall 15

# unload nvm
nvm unload

# go back to system version
nvm use system

# ==========node section=========
# run a js file
node file.js

# ===========global npm=========
# Create JSON file package
npm init -y

# Install dependencies of the package.json
npm install

# Install tool for cleaning
sudo npm -g npm-clean

# clean npm cache
npm cache clean

# update npm/node
npm update -g

# check outdated packages
npm outdated

# Uninstall a package
npm uninstall solc --save

# Install (--save-dev development dependency: monitoring changes)
npm i nodemon --save-dev

# package.json scripts => start is particular and doesn't need run prefix
npm start

# Run a script after creating the shortcut dev-test in package.json
npm run dev-test
