directory-changed-listener
==========================

This is a bash script that listens for a change in a given directory or any of its subdirectories.  When one is noticed, it runs another bash script (in which you do whatever you want to do).

### Compatability

It has only been tested on Mac OS X 10.7, but should work on most Linux-based systems.

How to use it
-------------- 

### To start it

To run it on Mac OS X, you'll first need to open up Terminal.

If you have the listener script at "**~/Sites/directory-changed-listener/dirListener.sh**", you would type the following:

>`cd ~/Sites/directory-changed-listener`
>
>`sh dirListener.sh /dir/to/listen/to`

Alternatively, if you want to move the script to the root of the directory you want to listen to, once you have moved it there, you would type the following:

>`cd /dir/to/listen/to`
>
>`sh dirListener.sh`

That is, if you don't feed the script its first parameter (a directory to listen to), it assumes you want to listen to the one in which it resides.

### To stop it

Simply type:

>`CTRL + c`

### To make it do your bidding

You'll need to edit the **dirChanged.sh** file to perform whatever action you want at the time a directory change is noticed.  For example, maybe you want to send an email because an intruder has hacked into your files!  Whatever it is, this is the file where you work your magic.

### Important note:

You must keep the **dirChanged.sh** file in the same directory as the **dirListener.sh** file.  The listener fires off **dirChanged.sh** when a directory change is noticed.
