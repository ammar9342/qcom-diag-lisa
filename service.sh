#!/system/bin/sh

while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 2
done

chmod 0755 /vendor/bin/diag-router
chmod 0644 /vendor/lib64/vendor.qti.diaghal@1.0.so
chmod 0644 /vendor/etc/vintf/manifest/vendor.qti.diag.hal.service.xml
chmod 0644 /vendor/etc/init/vendor.qti.diag.rc
chmod 0644 /vendor/etc/init/hw/init.qcom.usb.rc

chmod 0666 /dev/ffs-diag/* 2>/dev/null
ln -sf /dev/ffs-diag/ep0 /dev/diag
chmod 0666 /dev/diag 2>/dev/null

setprop sys.usb.config diag,diag_mdm,adb
setprop sys.usb.state diag,diag_mdm,adb

if ! pgrep -x "diag-router" > /dev/null; then
    /vendor/bin/diag-router &
fi
