#!/bin/bash

DATE=$(date '+%F')
DESTINATION_FOLDER="/backups/$DATE"

rsync -avz /root/ node-bkp:$DESTINATION_FOLDER
