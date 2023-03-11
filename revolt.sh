#!/bin/bash
export LD_LIBRARY_PATH=/userdata/roms/ports/revolt/packs/rvgl_linux/lib/libarm64/

/userdata/roms/ports/revolt/packs/rvgl_linux/rvgl.arm64 -basepath /userdata/roms/ports/revolt -prefpath /userdata/roms/ports/revolt/save -packlist default -profile ogs 
ret_error=$?
exit $ret_error