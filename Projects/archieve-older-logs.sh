#########################
# PROJECT REQUIREMENT
# In the given directory, if you find files more than a given size ex: 20 MB or files older than given days ex: 10 days
# Compress those files and move in a 'archieve' folder

# PURPOSE 
# As logs gets filled daily bases that should be archieved to save some space

# Steps to write the script
# Provide the path of directory
# Check if the directory is present or not
# Create 'archive' folder if not already present
# Find all the files with size more than 20 MB
# Compress each file
# Move the compressed files in 'archive' folder
# Make a cron job to run script day at give time
##########################

#!/bin/bash
# $Revision:001$
# $Fri Nov 04 20:41:55 IDT 2023$

# Commands
# ls -lh --- To find the size of the file in MB

#Variables
BASE=/home/idrbt/Desktop/Android-apps/test_and_delete
DAYS=10
DEPTH=1
RUN=0

# Check if the directory is present or not
if [ ! -d $BASE ]
then
        echo "directory does not exist: $BASE"
        exit 1
fi

# Create 'archieve' folder if not present
if [ ! -d $BASE/archive ]
then
        mkdir $BASE/archive
fi

# Find the list of files larger than 15 MB -- m time is used to find the 10days old or ...
for i in `find $BASE -maxdepth $DEPTH -type f -size +15M`
do
        if [ $RUN -eq 0 ]
        then
                echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
                gzip $i || exit 1
                mv $i.gz $BASE/archive || exit 1
        fi
done
