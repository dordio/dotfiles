#!/bin/bash
echo 'interno: ' && ifconfig eno2 | grep inet | awk '{ print $2 }' && echo 'externo: ' && curl whatismyip.level3.com
