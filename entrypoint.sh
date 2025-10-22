#!/bin/sh
crond -f -l 2 &
exec /bin/sh
