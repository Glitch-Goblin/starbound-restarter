# Development Plan

1. Basic restarting function
2. Logging functions
3. Information for the masses

## 1. Basic restarting function

I believe this can be achieved through simple bash scripts. The basic idea is to set up within a `screen`, then run a loop that checks for the server's status every 30 seconds or so. When the server isn't up (including when you first start the script), it will start the server.

### Progress:
Have achieved auto-restart capability, but it's not quite how I imagined it. But that's okay, it works. I wanted to be able to set up `starbound-restarter` in a separate `screen` from `starbound_server`, but it looks like I'm not adept enough at manipulating `screen` from within shellscript. Oh well. :)

Meanwhile, separated a branch for attempts at making the `screen` idea work, but it isn't really necessary. Currently, you can set up a screen on your own, then just run restarter.sh from there. That screen will be occupied by `starbound_server` output for the most part, and when it crashes, it will revert to restarter.sh output, which will then do its job and restart the server. If you hit Ctrl+C on this screen, it will close both the server and the restarter script! "Feature!"

## 2. Logging functions

Added functionality will include logging to look for clues on crashes and so forth.

## 3. Information for the masses

The candy functionality will include stuff that can be read by PHP script and posted to web sites.
