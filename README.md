# current-xfce-desktop
This is a shell script for quickly finding / deleting your current desktop paper file on Xubuntu.

# Installation
Make sure you are running the following:

Xfce 4.12 ([Here](http://ubuntuportal.com/2015/03/how-to-upgrade-xfce-4-10-to-xfce-4-12-in-xubuntu-14-04-and-xubuntu-14-10.html) is a guide to upgrade your Xfce version.)

```
$ xfdesktop --version
This is xfdesktop version 4.12.2, running on Xfce 4.12.
```
Bash 4.0

```
$ bash --version
GNU bash, version 4.3.11(1)-release (x86_64-pc-linux-gnu)
```

# Configuration
Currently, you have to manually configure this script.

* Find out your screen property names by running this command
 ```
 xfconf-query -c xfce4-desktop -m
 ```
 This will allow you to monitor xfce-desktop properties that have changed.

* While the above command is still running, manually modify the desktop of the screen you wish to add to this script.

 Once the desktop is changed, the property name will popup in your commandline, like so
 ```
 Start monitoring channel "xfce4-desktop":

 set: /backdrop/screen0/monitorLVDS1/workspace0/last-image
 ```

* Copy the property name, paste it into the config file with your screen name of choice, in the following format
 ```bash
 ["${screen_name}"]="/backdrop/screen0/monitorLVDS1/workspace0/last-image"
 ```

# Usage

Show the path to the current wallpaper
```bash
bash your/path/to/current-xfce-desktop/run.sh -l ${screen_name}
```

Remove the current wallpaper
```bash
bash your/path/to/current-xfce-desktop/run.sh -d ${screen_name}
```
