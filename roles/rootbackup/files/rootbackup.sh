#! /usr/bin/env bash

set +xe

DESTINATION=/mnt/plop
BACKUP_FILE_NAME=root-fs-backup.tar.gz
BACKUP_PATH=$DESTINATION/$BACKUP_FILE_NAME

tar cvpzf $BACKUP_PATH --exclude=$BACKUP_PATH --one-file-system /
