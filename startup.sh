#!/bin/bash

# Kill all running Conky instances
killall -q conky

# Wait until all processes have been shut down
while pgrep -x conky >/dev/null; do sleep 1; done

# Start new Conky instances
conky -c /home/tejas/conky_config/conky.conf &
conky -c /home/tejas/conky_config/sys-tray.conf &
conky -c /home/tejas/conky_config/weather.conf &

# Print success message
echo "✅ Conky started successfully!"
