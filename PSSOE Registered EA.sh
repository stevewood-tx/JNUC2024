#!/bin/bash
# This Extension Attribute will grab determine if the current user has registered for PSSOe
# The output of the EA is the UPN of the user if they are registered.

currentUser=$(ls -l /dev/console | awk '/ / { print $3 }')
entraUPN=$(dscl . read /Users/"$currentUser" dsAttrTypeStandard:AltSecurityIdentities | awk -F'SSO:' '/PlatformSSO/ {print $2}')

if [[ -z $entraUPN ]]; then

	echo "<result>Not Registered</result>"
    
else

	echo "<result>$entraUPN</result>"
    
fi