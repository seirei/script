#!/bin/sh
#
# Royal housing PostgreSQL Restore Script
# last update backup file.
# Version 1.0 [2008/03/21] New Create.
#  Mori Tomohito
# Execute User is Postgres Only!!!!!

#
# Const Section 
#
TARGET_DIR='/home/macwin/psqbackup'
POSTGRES_DATABASE=`basename $0`

#
# Last update backup file 
#
LAST_BACKUP_FILE=`find $TARGET_DIR -type f -name "*$POSTGRES_DATABASE*" -maxdepth 1 -mtime -1 -exec basename {} \;`

#
# Last update file name output
#
echo "restore target file : $LAST_BACKUP_FILE"

#
# Stop Postgres DB
#
/usr/local/pgsql/bin/pg_ctl stop -m i

#
# Start Postgres DB
# 
/usr/local/pgsql/bin/pg_ctl -w -o "-S -i -B 2048" start

#
# Drop DB
#
/usr/local/pgsql/bin/dropdb $POSTGRES_DATABASE 

#
# Create DB
# 
/usr/local/pgsql/bin/createdb -T template0 -E EUC_JP $POSTGRES_DATABASE 

#
# Restore DB
#
/usr/local/pgsql/bin/pg_restore -d $POSTGRES_DATABASE ${TARGET_DIR}/"$LAST_BACKUP_FILE"

