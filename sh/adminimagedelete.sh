#!/bin/sh
#
# Royal housing Cache Image File Delete
# Version 1.0 [2008/01/11] New Create.
#  Mori Tomohito
#

#
# ����å�������ʴ����ϡˤκ��
#

#
# �����ϥ�������
#

# ����å�������ΥХå����å�
tar -czf /home/macwin/imgbackup/images_royal-h_`date +"%Y%m%d"`.tar.gz /home/www/html/royal-h/royalhousing/admin/images/ > /dev/null

# ����å�������κ��
echo /home/www/html/royal-h/royalhousing/admin/images/* | xargs rm -rf

#
# �����꥾������
#

# ����å�������ΥХå����å�
tar -czf /home/macwin/imgbackup/images_royalresort_`date +"%Y%m%d"`.tar.gz /home/www/html/royalresort/admin/images/ > /dev/null

# ����å�������κ��
echo /home/www/html/royalresort/admin/images/* | xargs rm -rf

# �Хå����åץե�������
/usr/bin/find /home/macwin/imgbackup -maxdepth 1 -type f -mtime +60 | /usr/bin/xargs /bin/rm -f

