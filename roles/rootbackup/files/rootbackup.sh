#! /usr/bin/env bash

set +xe

DESTINATION=/mnt/plop
BACKUP_FILE_NAME=root-fs-backup.tar.gz
BACKUP_PATH=$DESTINATION/$BACKUP_FILE_NAME
LOGFILE=/var/log/rootbackup.log

tar \
  cvpzf \
  $BACKUP_PATH \
  --exclude=$BACKUP_PATH \
  --one-file-system \
  / \
  | tee --append $LOGFILE
