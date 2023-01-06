#!/bin/sh -e
# Select screen and take a screenshot
sel=$(slop -f "-i %i -g %g")
shotgun $sel /tmp/$(date +%s).png
