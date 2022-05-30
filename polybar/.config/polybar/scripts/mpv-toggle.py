#!/usr/bin/env python3

import subprocess
import json


mpv_running = subprocess.getoutput(
    """echo '{ "command": ["get_property", "pause"] }' | socat - /tmp/mpvsocket"""
)

mpv_running = json.loads(mpv_running)


if mpv_running.get("data") == True:
    subprocess.getoutput(
        """echo '{ "command": ["set_property", "pause", false] }' | socat - /tmp/mpvsocket"""
    )
else:
    subprocess.getoutput(
        """echo '{ "command": ["set_property", "pause", true] }' | socat - /tmp/mpvsocket"""
    )
