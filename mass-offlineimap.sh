#!/bin/bash
# mass-offlineimap -- sync a number of mail accounts between an old and a new mail server (i.e., move all emails over)
# written by Tim Schäfer, 12/2017

APPTAG='[MOI]'
FILE_OLDSERVER='./oldserver'
FILE_NEWSERVER='./newserver'
FILE_ACCOUNT_MAPPING='./account_mapping'

echo "$APPTAG mass-offlineimap -- sync a number of mail accounts between an old and a new mail server"
echo "$APPTAG Using old server data from '$FILE_OLDSERVER', new server data from '$FILE_NEWSERVER', account mapping data from '$FILE_ACCOUNT_MAPPING'."

# The account mapping file has one line per account in format: '<old_user> <new_user> <old_pwd> <new_pwd>'. Separator is one space.
while read -r line || [[ -n "$line" ]]; do
    # Read account data from text file:
    echo "Text read from file: $line"
    OLD_USER=$(echo "$line" | awk '{print $1}')
    NEW_USER=$(echo "$line" | awk '{print $2}')
    OLD_PASSWORD=$(echo "$line" | awk '{print $3}')
    NEW_PASSWORD=$(echo "$line" | awk '{print $4}')
    echo "Found in line old user: $OLD_USER, new user $NEW_USER, old password $OLD_PASSWORD, new password $NEW_PASSWORD."
    
    # Now create the config file for this user:
    FILE_USER_OFFLINEIMAP_CONF="offlineimap_${OLD_USER}"
    echo "Creating config file $FILE_USER_OFFLINEIMAP_CONF for user $OLD_USER"
    touch "$FILE_USER_OFFLINEIMAP_CONF"
    echo '' > "$FILE_USER_OFFLINEIMAP_CONF"
done < "$FILE_ACCOUNT_MAPPING"

echo "$APPTAG Exiting."

