#!/bin/sh
#
# The intention of this script is to initiate a loop that will check for Starbound's server status. 
# If Starbound's server is found to be not running, then it will start Starbound.
#
# 
#
# specify your starbound server folder here, starting from /home/username, etc, if necessary
starbound_dir="/path/to/starbound/linux64or32"

# the file may be called something else in your install. make sure there are no similarly named extra scripts running or this will not work. 
#ie if a match can be obtained on more than one running process using this name, it will not recognize when the main server goes down.
starbound_file="starbound_server"

# initializes the background screen to run on
screen -dmS starbound

#the function that will do the leg work when Starbound is found to not be running....
restarter () {
  echo "starbound-restarter is restarting Starbound...."
  screen -x starbound
  cd $starbound_dir
  ./$starbound_file
  screen -d
  sleep 15 # because it takes a minute for starbound_server to get off the ground
  return
}

# saving this timestamp for later
# timestamp=`date +%Y_%m%d_%H%M`

#the core loop of the restarter that checks for downages every 30 secs...
while true
do

ps -ag|grep -v "grep"|grep $starbound_file

if [ $? -eq 1 ]
then restarter
else echo "Starbound server looks okay.... "
fi

echo "starbound-restarter heart beat...."

sleep 30
done


exit 2
