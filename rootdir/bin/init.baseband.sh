#!/vendor/bin/sh

baseband_str=$(grep -Eo 'MPSS.*' /sys/devices/soc0/images)

if [ "$baseband_str" ]; then
    setprop gsm.version.baseband $baseband_str
fi
