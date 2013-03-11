for cmd in $(busybox --list);do ln -s /system/xbin/busybox /system/xbin/$cmd; done; ln -s /system/xbin/su /system/bin/su;
