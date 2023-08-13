#!/bin/bash

./flagd_linux_x86_64 start --uri file:./flags.yaml -d /var/run/flagd.sock > /dev/null 2>&1 &

node index.js
