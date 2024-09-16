# SImple_linux_CRON_backup
sudo yum install cronie -y
crontab -e
#Add the following line to schedule the script to run daily at 2:00 AM
0 2 * * * /home/user/backup.sh  
#You can verify that the cron job was added correctly by running:
crontab -l
