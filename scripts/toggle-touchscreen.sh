#!/bin/bash

DEVICE_ID="0003:2386:432E.0001"
DRIVER_PATH="/sys/bus/hid/drivers/hid-multitouch"
STATE_FILE="/tmp/touchscreen_state"

if [ ! -f "$STATE_FILE" ]; then
  echo "enabled" > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

if [ "$STATE" = "enabled" ]; then
  echo "Disabling touchscreen..."
  echo -n "$DEVICE_ID" | sudo tee "$DRIVER_PATH/unbind"
  echo "disabled" > "$STATE_FILE"
else
  echo "Enabling touchscreen..."
  echo -n "$DEVICE_ID" | sudo tee "$DRIVER_PATH/bind"
  echo "enabled" > "$STATE_FILE"
fi
