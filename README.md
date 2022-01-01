# Raspi-realdash
Realdash on a Raspberry Pi 3B using Raspberry OS 32-bit.

Step 1.
Download Realdash from my.realdash.net.
Make sure you get the arm version.

Step 2.
Burn Raspberry PI OS 32-bit to your Micro SD.

Step 3.
Add the files in this github to /home/PI/ on the rootfs partition.

Step 4.
Place SD card into your Pi and boot.
Set your region and keyboard.
Change your password.
Select or skip Wifi is hard wired.
Update (or not, still works without)

Step 5. (Configure GPU) 
Lauch Terminal
sudo raspi-config
6 Advaced Options
A2 GL Driver
  G2 --> <OK>
A9 Glamor
  <Yes>
Exit, but don't reboot yet.  

Step 6.
Run Script to install Realdash, supporting software, and create realdash user.
sudo bash postinstall.sh
Set your password for the backup account.

Step 7.
Reboot. Realdash will start and it is smooth.
You can exit out of here and Raspbian will give you a login screen. 
If you log into pi, it will take you back to Realdash. Log into realdash.
Now you can make any system changes that you want.


Note:
We are adding a user called realdash. This is a backup user so that if you run into issues or need to do further configuration outside of Readash, you can. Our script turns boots straight into Realdash through the pi user.
