#!/bin/sh -x

cd `dirname $0`

cd kernel-*.stash

(
 diff -pur linux-3.4.18.orig/drivers/staging/usbip linux-3.4.18/drivers/staging/usbip
) | grep -v ^Only > ../patches.xen/pvops-3.4-0102-usbip-deadlock-fix.patch

(
 diff -pur linux-3.4.18.orig/drivers/usb/core/hcd.c linux-3.4.18/drivers/usb/core/hcd.c ;
 diff -pur linux-3.4.18.orig/drivers/usb/core/urb.c linux-3.4.18/drivers/usb/core/urb.c
) | grep -v ^Only > ../patches.xen/pvops-3.4-0103-usb-debug.patch


