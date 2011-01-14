#!/bin/sh
#
# Royal housing Cache Image File Delete
# Version 1.0 [2007/09/13] New Create.
#  Mori Tomohito
#

#
# キャッシュ画像の削除
#

# 売買画像キャッシュファイルの削除
echo /home/www/html/royal-h/sell/b_img/* | xargs rm -rf

# 賃貸画像キャッシュファイルの削除
echo /home/www/html/royal-h/rent/b_img/* | xargs rm -rf
