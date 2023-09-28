#!/bin/bash

echo -e "user1\nuser1" | smbpasswd -a -s user1
echo -e "user2\nuser2" | smbpasswd -a -s user2
echo -e "admin\nadmin" | smbpasswd -a -s admin

exec smbd --foreground --no-process-group