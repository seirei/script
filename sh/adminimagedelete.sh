#!/bin/sh
#
# Royal housing Cache Image File Delete
# Version 1.0 [2008/01/11] New Create.
#  Mori Tomohito
#

#
# キャッシュ画像（管理系）の削除
#

#
# ロイヤルハウジング用
#

# キャッシュ画像のバックアップ
tar -czf /home/macwin/imgbackup/images_royal-h_`date +"%Y%m%d"`.tar.gz /home/www/html/royal-h/royalhousing/admin/images/ > /dev/null

# キャッシュ画像の削除
echo /home/www/html/royal-h/royalhousing/admin/images/* | xargs rm -rf

#
# ロイヤルリゾート用
#

# キャッシュ画像のバックアップ
tar -czf /home/macwin/imgbackup/images_royalresort_`date +"%Y%m%d"`.tar.gz /home/www/html/royalresort/admin/images/ > /dev/null

# キャッシュ画像の削除
echo /home/www/html/royalresort/admin/images/* | xargs rm -rf

# バックアップファイル削除
/usr/bin/find /home/macwin/imgbackup -maxdepth 1 -type f -mtime +60 | /usr/bin/xargs /bin/rm -f

