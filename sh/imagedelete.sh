#!/bin/sh
#
# Royal housing Cache Image File Delete
# Version 1.0 [2007/09/13] New Create.
#  Mori Tomohito
#

#
# ����å�������κ��
#

# �����������å���ե�����κ��
echo /home/www/html/royal-h/sell/b_img/* | xargs rm -rf

# ���߲�������å���ե�����κ��
echo /home/www/html/royal-h/rent/b_img/* | xargs rm -rf
