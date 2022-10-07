MODDIR=${0%/*}
setprop net.eth0.dns1 94.140.14.14
setprop net.eth0.dns2 94.140.14.14
setprop net.dns1 94.140.14.14
setprop net.dns2 94.140.14.14
setprop net.ppp0.dns1 94.140.14.14
setprop net.ppp0.dns2 94.140.14.14
setprop net.rmnet0.dns1 94.140.14.14
setprop net.rmnet0.dns2 94.140.14.14
setprop net.rmnet1.dns1 94.140.14.14
setprop net.rmnet1.dns2 94.140.14.14
setprop net.pdpbr1.dns1 94.140.14.14
setprop net.pdpbr1.dns2 94.140.14.14
if [ -a /system/etc/resolv.conf ]; then
  mkdir -p $MODDIR/system/etc/
  printf "nameserver 94.140.14.14\nnameserver 94.140.14.14" >> $MODDIR/system/etc/resolv.conf
  chmod 644 $MODDIR/system/etc/resolv.conf
fi