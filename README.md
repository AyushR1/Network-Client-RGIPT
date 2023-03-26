# Network-Client-RGIPT

# Introduction

This repository contains a script that allows you to automatically log in to your network using your credentials and checks whether the network is working properly or not. If there is a failure, it will re-login automatically every second until the connection is established. By doing so, you can ensure that you have uninterrupted access to the internet.

## How to Use

To use this script, follow these simple steps:

1. Clone the repository using the following command:
    
    `git clone <https://github.com/AyushR1/Network-Client-RGIPT.git`
    
    This command will enable you to have a local copy of the script on your machine.
    
2. Change the directory to the cloned repository using the following command:
    
    `cd Network-Client-RGIPT`
    
    This command will enable you to navigate to the directory where the script resides.
    
3. Open the `login.sh` file using your favorite text editor and replace the placeholders `USERNAME` and `PASSWORD` with your actual login credentials. If you are not sure how to do this, you can refer to the README file that comes with the script.
4. Save the file by clicking on the "Save" button or by using the keyboard shortcut "Ctrl+S".
5. Run the script using the following command:
    
    `bash login.sh`
    
    This will start the script and it will keep running in the background, checking the network status every second and re-logging in if necessary. This way, you can be sure that you are always connected to the internet.
    

## Running the Script on Startup

If you want the script to run automatically every time you start your computer, you can set up a cron job using the following steps:

1. Open the crontab editor using the following command:
    
    `crontab -e`
    
    This command will open the crontab editor, which will allow you to create a new cron job.
    
2. Add the following line at the end of the file:
    
    `@reboot bash /path/to/login.sh`
    
    Replace `/path/to/login.sh` with the actual path to the `login.sh` file in your cloned repository. This will ensure that the script is executed every time your computer is booted.
    
3. Save the file by clicking on the "Save" button or by using the keyboard shortcut "Ctrl+S".

Now the script will run automatically every time you start your computer, ensuring that you have uninterrupted access to the internet.

## Conclusion

This script makes it easy to automatically log in to your network using your credentials and keep your internet connection stable. By following the above steps, you can use it and enjoy uninterrupted internet access. With this script, you can avoid the hassle of manually logging in to your network and ensure that you always stay connected to the internet.