mount -o rw,remount /data
MODPATH=${0%/*}

# log
exec 2>$MODPATH/debug-pfsd.log
set -x

# property
DEF=`getprop persist.radio.multisim.config`
resetprop -p --delete persist.radio.multisim.config
resetprop -n persist.radio.multisim.config dsds
DEF=`getprop persist.vendor.radio.multisim.config`
resetprop -p --delete persist.vendor.radio.multisim.config
resetprop -n persist.vendor.radio.multisim.config dsds
DEF=`getprop persist.vendor.radio.msimmode`
resetprop -p --delete persist.vendor.radio.msimmode
resetprop -n persist.vendor.radio.msimmode dsds
DEF=`getprop ro.multisim.simslotcount`
resetprop -n ro.multisim.simslotcount 2
DEF=`getprop ro.vendor.multisim.simslotcount`
resetprop -n ro.vendor.multisim.simslotcount 2
DEF=`getprop ro.radio.simcount`
resetprop -n ro.radio.simcount 2
DEF=`getprop ro.telephony.sim.count`
resetprop -n ro.telephony.sim.count 2
DEF=`getprop ro.vendor.radio.max.multisim`
resetprop -n ro.vendor.radio.max.multisim 2
DEF=`getprop telephony.active_modems.max_count`
resetprop -n telephony.active_modems.max_count 2


