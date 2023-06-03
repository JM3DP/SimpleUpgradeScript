Hi, thank you for taking an interest in my first bash script project.
It's not quite perfect yet, but I will be working on this and other scripts in the future.
This is mainly a tool for learning, so I don't plan on spending too much time and effort on this.


#//RUN AS ROOT TO AVOID PERMISSIONS ERRORS//

To get started, simply run the following command. This command will make a directory called /etc/scripts, apply permissions to run the script, as well as execute the script.

>sudo mkdir -p /etc/scripts && sudo curl -sSL -o /etc/scripts/UbuntuSimpleUpgrader https://raw.githubusercontent.com/JM3DP/SimpleUpgradeScript/main/UbuntuSimpleUpgrader && sudo chmod +x /etc/scripts/UbuntuSimpleUpgrader && sudo /etc/scripts/UbuntuSimpleUpgrader

This will install mail utils, nullmailer, and set up a cron job based on user-input data.

For nullmailer setup, put the mailname as the name of your system if running multiple VMs or machines.
Next, you can either leave this blank and edit the /etc/nullmailer/remotes file to include your mailserver settings, or enter it here. An example for gmail using App Password (needed if you have 2fa) would be as follows:

"smtp.gmail.com smtp --port=587 --starttls --auth-login --user=<user@gmail.com> --pass=<passcode>"
    PLEASE NOTE THAT THIS WILL REQUIRE AN APP PASSCODE IF USING 2 FACTOR AUTHENTICATION
  
 When it asks where to send local emails, choose your destination email address.
  
  The next section is setting up your cron job. The cron job syntax is as follows 1 2 3 4 5:
            1: Minutes (the minutes after the hour, if using a certain time of day, eg. 0:30, where 1 will be 30 (12:30am)) Number ranges are 0-59
            2. Hours (The hour of day the script will run, can be from 0-23
            3. Day of month: Can range from 1-31
            4. Month: Can range from 1-12
            5. Day of the week: Can range from 0-6 (0 being sunday, 6 being saturday)
  
  
  
Please note that this script, at the time of writing this, will not reboot your system. If you would like to automatically reboot, add the following line under sudo apt clean:
  
  *#Reboot the system
   reboot now*
  
  **NOTE: Adding the reboot command will not automatically start any services that aren't scripted to start on reboot. Please verify and adjust your services accordingly!**
  
  *Thank you for using my script, I do hope it will be helpful to some! -Justin*
  
