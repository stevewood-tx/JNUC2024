#!/bin/bash
# This EA will grab the status of Remote Login (SSH) on macOS

echo "<result>$(/usr/sbin/systemsetup -getremotelogin | awk '{print $3}')</result>"
