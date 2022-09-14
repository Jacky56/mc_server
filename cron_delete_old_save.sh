#!/usr/bin/env sh

export old_save_prefix=`date --date="3 days ago" +%Y/%m/%d`
gsutil rm -r gs://potatoe-block-simulator/$old_save_prefix

if [ $? == 1 ];
then
  echo "failed to delete gs://potatoe-block-simulator/$old_save_prefix"
fi
