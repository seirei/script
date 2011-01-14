#!/bin/sh
#
# Royal housing PostgreSQL Backup File Send Script
# Version 1.0 [2008/01/18] New Create.
#  Mori Tomohito
# Execute User is root Only!!!!!

# rsync command
rsync -avzop --delete vecweba::psqbackup /home/macwin/psqbackup/

# file owner chenged
chown postgres:postgres /home/macwin/psqbackup/*
