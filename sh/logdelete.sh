#!/bin/sh
#
# Royal housing Apache SSL Log Rotation
# Version 1.0 [2008/03/27] New Create.
#  Mori Tomohito
#

#
# �ѿ�������
#
BACKUP_SOURCE_DIR='/usr/local/apache/logs'

#
# ���ե�����κ��
#
find $BACKUP_SOURCE_DIR -maxdepth 1 -type f -name '*log' | /usr/bin/xargs /bin/rm -f

#
# Apache��Ƶ�ư
#
kill -USR1 `cat $BACKUP_SOURCE_DIR/httpd.pid`

