#!/bin/bash
# mass-offlineimap -- sync a number of mail accounts between an old and a new mail server (i.e., move all emails over)
# written by Tim Schäfer, 12/2017

APPTAG='[MOI]'
FILE_OLDSERVER='./oldserver'
FILE_NEWSERVER='./newserver'
FILE_ACCOUNT_MAPPING='./account_mapping'

echo "$APPTAG mass-offlineimap -- sync a number of mail accounts between an old and a new mail server"
echo "$APPTAG Using old server data from '$FILE_OLDSERVER', new server data from '$FILE_NEWSERVER', account mapping data from '$FILE_ACCOUNT_MAPPING'."

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
done < "$FILE_ACCOUNT_MAPPING"

echo "$APPTAG Exiting."

