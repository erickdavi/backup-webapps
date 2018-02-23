#!/bin/bash

#Initial configurations
BKP_DIR="/root/backup"
BKP_TARGET="/var/www/site"

DB_NAME="database"
DB_USER="username"
DB_PASS="password"

#Auto generated
DATE=$(date '+%d-%m-%Y')
#
mkdir -p $BKP_DIR/$DATE
tar czvf $BKP_DIR/$DATE/files-$DATE.tar.gz $BKP_TARGET &> /dev/null
mysqldump -u $DB_USER -p$DB_PASS --databases $DB_NAME > $BKP_DIR/$DATE/database-$DATE.sql &> /dev/null
