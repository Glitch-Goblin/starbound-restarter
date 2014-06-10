#!/bin/sh
#
# The intention of this script is to initiate a loop that will check for Starbound's server status. 
# If Starbound is found to be not online, then it will start Starbound.
#

$starbound_dir="/path/to/starbound/linux64or32" # specify your starbound server folder here, starting from /home/username, etc, if necessary
$starbound_file="starbound_server" # may be called something else in your install

while true
do

$starb_status= #insert way to determine starbound status here xD

$starb_status==1 then 

sleep 15
done


starter () {
  cd $starbound_dir
  bash $starbound_file
}
