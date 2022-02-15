# =========== Compression and execution ===============
# create the tar tuto.tar from dir
tar -cf tuto.tar dir/

# get what inside the tar
tar -tf tuto.tar

# add file3 to the tar file
tar -rf tuto.tar file3

# un-tar the file (-v for verbose, use -c tospecify location)
tar -xvf tuto.tar

# compress the tar file with gzip
gzip tuto.tar

# compress the tar file with bzip2
bzip2 tuto.tar

# unzip the tuto.tar.gz to a tar file
gunzip tuto.tar.gz

# unzip the tuto.tar.bz2 to a tar file
bunzip2 tuto.tar.bz2

# tar and gzip from /dir to tuto.tar.gz
tar -zcf tuto.tar.gz /dir

# tar and bzip2 from /dir to tuto.tar.bz2
tar -jcf tuto.tar.bz2 /dir

# create zip file -r recursively from dir/
zip -r tuto.zip dir/

# unzip the file (-l get just what's inside)
unzip -l tuto.zip

# unrar the file tutp,tar
unrar e tuto.tar

# list what's inside the rar file
unrar l tuto.tar
