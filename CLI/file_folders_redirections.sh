# =========== File and Folders ===============
# search for string/regex keyword in file or folder
grep -Erin keyword file_or_folder

# r for recursive search and v for inversing the match
grep -rv keyword folder/

# search for a file correspondance in the files database
locate file

# update files databases
sudo updatedb

# show tree representation of folder
tree folder

# show tree and ignore node_modules directory in tree
tree -I node_modules

# look for a file in directory. * serves as joker
find /var/log/ -name "syslog*"

# less than 10M, modified 7 days ago, must be file (d for directory)
find -size -10M -atime 6 -type f

# delete the file found
find   -name "*.jpg" -delete

# execute the command after exec, end with \, {} refers to the file
find   -name "*.jpg" -exec chmod 600 {} \;

# create the file/ modify last modification date
touch file

# display file in the console. ‘less file’ is also an alternative
cat -n file

# show first 3 lines
head -n 3 file

# show last 3 lines. -f for following the evolution every 3s
tail -n 3 file -f -s 3

# rename/move file1 to file2
mv file1 file2

# create directories
mkdir dir1 dir2

# create directoies with the intermediaires
mkdir -p level1/level2/level3

# copy file1 to file2 (check rsync for smart copy)
cp file1 file2

# copy directory1 to directory2
cp -R dir1 dir2

# copy all jpg images to the directory
cp *.jpg dir3

# delete files
rm file1 file2

# delete directory
rm -r directory

# create symblic link with -s from dir1 to dir2
ln -s dir1 dir2

# smart copy -a attributes (777), -r recursive, -v verbose
rsync -arv dir1 dir2

# delete files from b if not found in a, store backup folder in c
rsync --delete --backup --backup-dir=c a b

# =========== File Redirections ===============
# save the result of the command ls into file (>> for apending)
ls > file

# log the errors if there's any in the file log error
cd dir 2>> log_error

# log result and errors in the file log
cd dir >> log 2>&1

# get the file as parameter and run cat
cat < file

# cut -d : -f 1 file.csv | sort
run first command cut and pass the result to second command

# read the input from the keyboard until keyword STOP is typed
sort -n << STOP
