# SImple_linux_CRON_backup
```
sudo yum install cronie -y
crontab -e
```
```
* * * * * command_to_run
- - - - -
| | | | |  
| | | | └── Day of the week (0 - 7) (Sunday = 0 or 7)  
| | | └──── Month (1 - 12)  
| | └────── Day of the month (1 - 31)  
| └──────── Hour (0 - 23)  
└────────── Minute (0 - 59)
```
# The following command will run the script every minute of every hour, every day.
```
* * * * * /home/user/backup.sh
```
# This runs the script at midnight (00:00) every Sunday (0 = Sunday).
```
0 0 * * 0 /home/user/backup.sh
```
# This runs the script at 5:00 PM on the 1st of every month.
```
0 17 1 * * /home/user/backup.sh
```

# Add the following line to schedule the script to run daily at 2:00 AM
```
0 2 * * * /home/user/backup.sh
```
# You can verify that the cron job was added correctly by running:
```
crontab -l
```
