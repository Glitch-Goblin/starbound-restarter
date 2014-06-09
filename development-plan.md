# Development Plan

1. Basic restarting function
2. Logging functions
3. Information for the masses

## 1. Basic restarting function

I believe this can be achieved through simple bash scripts. The basic idea is to set up within a `screen`, then run a loop that checks for the server's status every 30 seconds or so. When the server isn't up (including when you first start the script), it will start the server.

## 2. Logging functions

Added functionality will include logging to look for clues on crashes and so forth.

## 3. Information for the masses

The candy functionality will include stuff that can be read by PHP script and posted to web sites.
