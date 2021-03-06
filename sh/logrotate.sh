#!/bin/sh
#
# Royal housing Apache Log Rotation
# Version 1.0 [2007/09/13] New Create.
#  Mori Tomohito
#

#
# 変数の設定
#
LOG_FILE_NAME=`basename $0`
KEEP_FILE_DAY='30'
BACKUP_SOURCE_DIR='/usr/local/apache/logs'
BACKUP_TARGET_DIR='/var/a_log'
BACKUP_FILE='a_log_'$LOG_FILE_NAME'_'`date +"%Y%m%d"`

#
# ログファイルの移動と圧縮
#
/bin/mv $BACKUP_SOURCE_DIR/a_log_$LOG_FILE_NAME $BACKUP_TARGET_DIR/$BACKUP_FILE
/bin/gzip -f $BACKUP_TARGET_DIR/$BACKUP_FILE 

#
# Apacheを再起動
#
kill -USR1 `cat $BACKUP_SOURCE_DIR/httpd.pid`

#
# 一定期間経過したログバックアップファイルを削除
#
/usr/bin/find $BACKUP_TARGET_DIR -maxdepth 1 -type f -mtime +$KEEP_FILE_DAY | /usr/bin/xargs /bin/rm -f
