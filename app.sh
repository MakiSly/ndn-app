#!/bin/sh
appname=`basename $0 | sed s,\.sh$,,`
dirname=`dirname $0`
tmp="${dirname#?}"
if [ "${dirname%$tmp}" != "/" ]; then
dirname=$PWD/$dirname
fi
VLC_PLUGIN=$PWD/plugins
echo $VLC_PLUGIN
LD_LIBRARY_PATH=$dirname
export VLC_PLUGIN_PATH=$VLC_PLUGIN
echo $LD_LIBRARY_PATH
export LD_LIBRARY_PATH
$dirname/$appname "$@"

