#!/bin/sh
#
# Royal housing PostgreSQL DB Vacuum Script
# Version 1.0 [2007/09/13] New Create.
#  Mori Tomohito
#

#
# �ѿ�������
#
POSTGRES_DATABASE_NAME=`basename $0`
POSTGRES_OPTIONS='-z -d'

# �ե�����̾�Ρʥ���ܥ�å���󥰡ˤ�Ʊ��Υǡ����١����Υǡ����١�����������¹�
/usr/local/pgsql/bin/vacuumdb $POSTGRES_OPTIONS $POSTGRES_DATABASE_NAME
