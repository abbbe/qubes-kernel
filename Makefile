#
# Common Makefile for building RPMs
#

NAME := kernel
SPECFILE := kernel-xenlinux.spec
VERSION := $(shell cat version)


include Makefile.common
