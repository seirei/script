#!/bin/sh
#
# Royal housing PostgreSQL Backup Script
# Version 1.0 [2007/09/13] New Create.
#  Mori Tomohito
#

#
# �ѿ�������
#
POSTGRES_DATABASE_NAME=`basename $0`
POSTGRES_OPTIONS='-Ft -b -o'
KEEP_FILE_DAY='5'
BACKUP_TARGET_DIR='/home/macwin/psqbackup'
BACKUP_FILE='pgdump_'$POSTGRES_DATABASE_NAME'_'`date +"%Y%m%d"`'.tar'

# �ե�����̾�Ρʥ���ܥ�å���󥰡ˤ�Ʊ��Υǡ����١����ΥХå����å׼���
/usr/local/pgsql/bin/pg_dump $POSTGRES_OPTIONS $POSTGRES_DATABASE_NAME > $BACKUP_TARGET_DIR/$BACKUP_FILE

# ������ַвᤷ���Хå����åץե��������
/usr/bin/find $BACKUP_TARGET_DIR -maxdepth 1 -type f -mtime +$KEEP_FILE_DAY | /usr/bin/xargs /bin/rm -f
