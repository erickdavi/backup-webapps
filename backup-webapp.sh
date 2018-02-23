#!/bin/bash

#Initial configurations
BKP_DIR="/root/backup"
BKP_TARGET="/var/www/site"
DB=site

#Auto generated
DATE=$(date '+%d-%m-%Y')

#
mkdir -p $BKP_DIR/$DATE
tar czvf $BKP_DIR/$DATE/files-$DATE.tar.gz $BKP_TARGET &> /dev/null
mysqldump --databases $DB > $BKP_DIR/$DATE/database-$DATE.sql
