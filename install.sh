SKIPMOUNT=true
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
REPLACE="
"
print_modname() {
  ui_print "***********************************"
  ui_print "       Magisk AdGuard DNS          "
  ui_print "           By Person0z             "
  ui_print "***********************************"
}
on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
resolve_conf() {
  if [ -a /system/etc/resolv.conf ]; then
    mkdir -p $MODPATH/system/etc/
    printf "nameserver 94.140.14.14\nnameserver 94.140.14.14" >> $MODPATH/system/etc/resolv.conf
    touch $MODPATH/auto_mount
  fi
}
