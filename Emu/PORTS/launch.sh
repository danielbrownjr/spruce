#!/bin/sh
echo $0 $*

PORTS_DIR=/mnt/SDCARD/Roms/PORTS
EMU_DIR=/mnt/apps/ports

echo 0 > /sys/devices/system/cpu/cpu3/online
echo 0 > /sys/devices/system/cpu/cpu2/online
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
$EMU_DIR/overclock 1200

cd $PORTS_DIR

./sorr.sh "$1"