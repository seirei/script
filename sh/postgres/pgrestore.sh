#!/bin/sh
#
# Royal housing PostgreSQL Restore Script
# Version 1.0 [2007/09/13] New Create.
#  Mori Tomohito
# Execute User is Postgres Only!!!!!

#
# Const Section 
#
TARGET_DIR='/home/macwin/psqbackup'
POSTGRES_DATABASE=`basename $0`

#
# Param Check Section
#
if [ "$1" == '' ];then
  echo "Ex : ./pgrestore.sh [Target filename]"
  echo "-- Target file list..."
  ls $TARGET_DIR | grep $POSTGRES_DATABASE 
  exit 0
fi

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
/usr/local/pgsql/bin/pg_restore -d $POSTGRES_DATABASE ${TARGET_DIR}/"$1" 

