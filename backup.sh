#! /bin/bash 

#Compress the folder with foldernames + date and take backup variable
filename="backup_`date +%d`_`date +%m`_`date +%Y`.tar";

#find .gz files with find and create compressed file using tar
find /var/log/ -name "*.gz" -exec tar cvpzf /home/emin/Projects/backup/$filename {} \;

#move to backup folder
cd /home/emin/Projects/backup/

# List the content
ls

# List the disk usage
du -sh

