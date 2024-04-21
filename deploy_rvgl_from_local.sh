#!/bin/bash

echo
echo Deploying rvgl from local installation
echo

config_file=$HOME/.config/rvmm/config.json
data_dir=`cat $config_file | jq '."data-dir"' | sed 's/"//g'`

echo local installation detected in: $data_dir

pack_dir=$data_dir/packs
save_dir=$data_dir/save

mount_batocera_share=`mount | grep SHARE | cut -f3 -d" "`
dest_dir=$mount_batocera_share/roms/ports/revolt

echo -n "Testing target directory $dest_dir: "

if [ -d $dest_dir ]; then
    echo "exist"
else
    mkdir -p $dest_dir
    echo "created"
fi

echo -n "Synchronizing packs directory... "
rsync -vraq --delete $pack_dir $dest_dir
echo done

echo -n "Synchronizing save directory... "
rsync -vraq --delete $save_dir $dest_dir
echo done

echo -n "copying local packs..."
cp -fr packs $dest_dir
echo done

echo -n "copying local save..."
cp -fr save $dest_dir
echo done

echo -n "copying revolt.sh script..."
cp -f revolt.sh $dest_dir
echo done