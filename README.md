starbound-restarter
===================

Simple scripts for restarting a Starbound server automatically and providing a few bits of information on its status.

Written by atomfenrir for use on atomfenrir.com's Starbound server. These scripts are distributed with the MIT License.

## Why come?

There are already a few Starbound-oriented git repositories out there as of June, 2014, Starbound - Beta Enraged Koala update 8, but they haven't been able to do what I need for my own server. I suspect much of this is simply due to differences between Linux distros and Starbound versions. Most of these repositories were written shortly after Starbound was released, e.g. early 2014, when Ubuntu 14.04 Trusty Tahr was not yet available. I've only just started my server this June, so there's been a little bit of mileage between both Starbound's Beta development and the new Ubuntu LTS distro. 

## Requirements

Errr... a Linux based Starbound server? There isn't going to be a lot of testing on this, but I'm building it specifically for use on Ubuntu 14.04.

There are two other conditions needed to install / run this:
* You must have github installed on your server to make use of the clone command (duh)
* You can't have any other scripts running at the same time as this one that would produce a regex match similar to your Starbound server's executable file name. For example, if your server executable is called "starbound_server" (as most likely it is to be), then you cannot run any additional scripts that would fit the search `*starbound_server*` or this script will not work. Specifically, it will not be able to sense that the server has gone down, and will not attempt to initiate a reboot.
## Instructions

### Install

In terminal, cd to the directory where you want to drop starbound-restarter's folder.
Type: `git clone https://github.com/atomfenrir/starbound-restarter.git`
In the starbound-restarter folder, open for editing the "restarter.sh" file.
In the top section of the script, there are some variables pointing to your Starbound server's folder that you will need to fill in.
Save and exit. Change the permissions of the script so that it will be executable by typing: `chmod 744 restarter.sh`

### Run restarter.sh

When you are ready to run (your Starbound server can already be running or not, it doesn't matter), start a new *screen* session by typing `screen -S restarter`. "restarter" here can be anything, whatever nickname you want to give the session. Go to your restarter directory, e.g., `cd starbound-restarter`. Then type `./restarter.sh`. You should start to see your Starbound server's boot sequence (assuming it wasn't already running on another screen, in which case you'll see restarter.sh heart beats.) 

To leave the screen running, hit CTRL+A then CTRL+D in short succession. You'll be back to your normal terminal view and restarter.sh will be running in the background. 

To return to the server output screen, type `screen -r restarter` (or whatever you nicknamed the session.) 

To tell the Starbound server to do a graceful shutdown and kill the restarter script, hit CTRL+C while in the output screen.
You can then leave the screen as before.


## Credit given where credit due

I don't expect to get a lot of community help on this here repository; this is just kind of a hobby thing for me. I am, however, a completely amateur programmer, so a few of the other repositories out there have definitely given me inspiration as to which direction I'm going to take this one:

- [Omniworld's Starbound_Beta_Linux_Server_Scripts](https://github.com/Omniworld/Starbound_Beta_Linux_Server_Scripts)
- [dkesberg's starbound-libs](https://github.com/dkesberg/starbound-libs)
- [seriallos's commandstar](https://github.com/seriallos/commandstar)