#!/bin/bash

# Directories
SOURCE_DIR="/home/ec2-user/documents"        # Change this to your source directory
BACKUP_DIR="/home/ec2-user/backups"          # Change this to your backup directory
LOG_FILE="/home/ec2-user/backup.log"         # Log file to store script execution details

# Create a new backup directory with a timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
NEW_BACKUP_DIR="$BACKUP_DIR/backup_$TIMESTAMP"

# Create backup directory
mkdir -p "$NEW_BACKUP_DIR"

# Copy files to the backup directory
cp -r "$SOURCE_DIR/"* "$NEW_BACKUP_DIR"

# Log success message
echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup completed successfully to $NEW_BACKUP_DIR" >> "$LOG_FILE"

# Delete backups older than 7 days
find "$BACKUP_DIR" -type d -name "backup_*" -mtime +7 -exec rm -rf {} \;

# Log deletion message
echo "$(date '+%Y-%m-%d %H:%M:%S') - Deleted backups older than 7 days" >> "$LOG_FILE"
