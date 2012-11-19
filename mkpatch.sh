#!/bin/sh -x

cd `dirname $0`

cd kernel-*.stash

(
 echo diff -pur linux-3.4.18.orig/drivers/usb/host/xen-usbback/usbback.c linux-3.4.18/drivers/usb/host/xen-usbback/usbback.c; 
 diff -ur linux-3.4.18.orig/drivers/usb/host/xen-usbback/usbback.c linux-3.4.18/drivers/usb/host/xen-usbback/usbback.c; 
 echo diff -pur linux-3.4.18.orig/drivers/usb/host/xen-usbfront.c linux-3.4.18/drivers/usb/host/xen-usbfront.c
 diff -ur linux-3.4.18.orig/drivers/usb/host/xen-usbfront.c linux-3.4.18/drivers/usb/host/xen-usbfront.c
) | grep -v ^Only > ../patches.xen/pvops-3.4-0101-usb-xen-pvusb-driver-bugfix.patch


