#! /usr/bin/env bash

set +xe

LOGFILE=/var/log/syncdrives.log

rsync -avz /mnt/plop/ /mnt/blorp | tee --append $LOGFILE
