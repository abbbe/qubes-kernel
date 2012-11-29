#!/bin/sh -x

cd `dirname $0`

cd kernel-*.stash

(
 echo diff -pur linux-3.4.18.orig/drivers/staging/usbip/vhci_sysfs.c linux-3.4.18/drivers/staging/usbip/vhci_sysfs.c
 diff -pur linux-3.4.18.orig/drivers/staging/usbip/vhci_sysfs.c linux-3.4.18/drivers/staging/usbip/vhci_sysfs.c
) | grep -v ^Only > ../patches.xen/pvops-3.4-0102-usbip-deadlock-fix.patch

(
 diff -pur linux-3.4.18.orig/drivers/staging/usbip/stub_main.c linux-3.4.18/drivers/staging/usbip/stub_main.c ;
 diff -pur linux-3.4.18.orig/drivers/staging/usbip/stub_tx.c linux-3.4.18/drivers/staging/usbip/stub_tx.c

) | grep -v ^Only > ../patches.xen/pvops-3.4-0104-usbip-host-fix-doublefree.patch

