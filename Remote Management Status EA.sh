#!/bin/bash
# This EA will grab the status of Remote Management on macOS

launchctl="/bin/launchctl"

# Check to see if Remote Desktop is on
remoteDesktopOn=$($launchctl list com.apple.screensharing > /dev/null 2>&1; /bin/echo $?)

if [[ $remoteDesktopOn == "0" ]]; then
	echo "<result>Remote Desktop Enabled</result>"
else
	echo "<result>Remote Desktop Disabled</result>"
fi