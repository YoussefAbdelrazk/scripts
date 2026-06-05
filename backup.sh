#!/bin/bash

# global variables

time=$( date +%m-%d-%y_%H_%M_%S )
Backup_file=$1
Dest=/home/ubuntu/backup
filename=file-backup-$time.tar.gz
Log_File="/home/ubuntu/backup/logfile.log"


# check file is empty 

if [ -z "$Backup_file" ]
then
	echo " Enter the directory that you want to backup " | tee -a "$Log_File"
	exit 2
fi


# check exist status and backup file with tar and gzip 

if [ $? -ne 2 ]
then 
if [ -f "$filename" ]
then
	echo " Error file $filename already exists!" | tee -a "$Log_File"
else

	tar -czvf "$Dest/$filename" "$Backup_file"
	echo " Backup completed successfuly . backup file: $Dest/$filename " | tee -a "$Log_File"

fi
fi 
