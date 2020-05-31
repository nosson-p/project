#!/bin/bash
# --------- User Settings ---------
PROCESS2RUN="sudo python /home/pi/project/server_room_temp.py"
MONITOR_SCRIPT="/home/pi/project/monitor_process.py"
# ---------------------------------
nohup $PROCESS2RUN &
VAR=`pgrep -f "$PROCESS2RUN"`
echo $VAR
nohup python $MONITOR_SCRIPT $VAR &



