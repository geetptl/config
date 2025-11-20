#!/bin/bash

if pgrep wlsunset > /dev/null; then
    pkill wlsunset
else
    wlsunset &
fi
