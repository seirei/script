#!/bin/sh
#
# Royal housing PostgreSQL DB Vacuum Lo Script
# Version 1.0 [2007/09/13] New Create.
#  Mori Tomohito
#

#
# 変数の設定
#
POSTGRES_DATABASE_NAME=`basename $0`
POSTGRES_OPTIONS=''

# ファイル名称（シンボリックリング）と同一のデータベースのデータベース再編成を実行
/usr/local/pgsql/bin/vacuumlo $POSTGRES_OPTIONS $POSTGRES_DATABASE_NAME
