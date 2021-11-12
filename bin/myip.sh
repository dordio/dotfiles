#!/bin/bash
ifconfig eth0 | grep inet | awk '{ print $2 }' && curl whatismyip.level3.com
