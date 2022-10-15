#!/bin/sh

# Copyright © 2022 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

set -e -u

pdir="${0%/*}/.."
prog="$pdir/informan"
echo 1..1
# shellcheck disable=SC2016
PAGER='sed -e "s/^/# /; 10q;"; cat >/dev/null' prog="$prog" \
    script -e -q -c '"$prog" gzip' /dev/null
echo ok 1

# vim:ts=4 sts=4 sw=4 et ft=sh
