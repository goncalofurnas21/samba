#!/bin/bash

# Get current date
DATE=$(date +"%d_%m_%y")

# Backup and zip all shares
zip -r Backup_$DATE.zip /shares/private /shares/public /shares/usr1 /shares/usr2
