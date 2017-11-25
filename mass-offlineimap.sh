#!/bin/bash
# mass-offlineimap -- sync a number of mail accounts between an old and a new mail server (i.e., move all emails over)
# written by Tim Schäfer, 12/2017

APPTAG='[MOI]'
FILE_OLDSERVER='./oldserver'
FILE_NEWSERVER='./newserver'
FILE_ACCOUNT_MAPPING='./account_mapping'

echo "$APPTAG mass-offlineimap -- sync a number of mail accounts between an old and a new mail server"
echo "$APPTAG Using old server data from '$FILE_OLDSERVER', new server data from '$FILE_NEWSERVER', account mapping data from '$FILE_ACCOUNT_MAPPING'."

while read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    OLD_USER=$(echo "$line" | awk '{print $1}')
    NEW_USER=$(echo "$line" | awk '{print $2}')
    OLD_PASSWORD=$(echo "$line" | awk '{print $3}')
    NEW_PASSWORD=$(echo "$line" | awk '{print $4}')
    echo "Found in line old user: $OLD_USER, new user $NEW_USER, old password $OLD_PASSWORD, new password $NEW_PASSWORD."
done < "$FILE_ACCOUNT_MAPPING"

echo "$APPTAG Exiting."

