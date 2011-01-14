#!/bin/sh
#
# Royal housing Apache Log Rotation
# Version 1.0 [2007/09/13] New Create.
#  Mori Tomohito
#

#
# �ѿ�������
#
LOG_FILE_NAME=`basename $0`
KEEP_FILE_DAY='30'
BACKUP_SOURCE_DIR='/usr/local/apache/logs'
BACKUP_TARGET_DIR='/var/a_log'
BACKUP_FILE='a_log_'$LOG_FILE_NAME'_'`date +"%Y%m%d"`

#
# �����ե�����ΰ�ư�Ȱ���
#
/bin/mv $BACKUP_SOURCE_DIR/a_log_$LOG_FILE_NAME $BACKUP_TARGET_DIR/$BACKUP_FILE
/bin/gzip -f $BACKUP_TARGET_DIR/$BACKUP_FILE 

#
# Apache��Ƶ�ư
#
kill -USR1 `cat $BACKUP_SOURCE_DIR/httpd.pid`

#
# ������ַвᤷ�������Хå����åץե��������
#
/usr/bin/find $BACKUP_TARGET_DIR -maxdepth 1 -type f -mtime +$KEEP_FILE_DAY | /usr/bin/xargs /bin/rm -f