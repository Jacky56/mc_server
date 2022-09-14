#!/usr/bin/env sh

export zip_name=world_`date +%Y_%m_%d_%H_%M`.zip
export date_path=`date +%Y/%m/%d`
cd ~/minecraft
zip -r $zip_name world && gsutil cp ~/minecraft/$zip_name gs://potatoe-block-simulator/$date_path/$zip_name
rm ~/minecraft/$zip_name
