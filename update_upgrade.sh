
#!/bin/bash

# Update
sudo apt update

# upgrade
sudo apt upgrade -y

#  autoremove
sudo apt autoremove -y

# clean
sudo apt clean

# Check the exit status of the last command
if [ $? -ne 0 ]; then
    # Command failed, send an email
    recipient="justin@justinslab.net"
    subject="Cron job failed!"
    body="The cron job failed to execute successfully."

    echo -e "Subject: $subject\n\n$body" | /usr/sbin/sendmail -f "$recipient" "$recipient"
fi

