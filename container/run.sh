#!/bin/sh
if [ $# -gt 0 ];then
  exec "$@"
else
  exec taskd server --data /var/lib/taskd
fi
