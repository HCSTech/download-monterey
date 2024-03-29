#!/bin/sh

# Created by HCS Technology Group
# Updated November 1, 2021

# We used SUS Inspector 2.0 beta 1 to get the link from Apple
# Link: https://github.com/hjuutilainen/sus-inspector/releases/tag/v2.0b1

#Download macOS 12.0.1 directly from Apple as a PKG to /tmp
echo "macOS 12.0.1 is downloading"
/usr/bin/curl -s "http://swcdn.apple.com/content/downloads/39/60/002-23774-A_KNETE2LDIN/4ll6ahj3st7jhqfzzjt1bjp1nhwl4p4zx7/InstallAssistant.pkg" -o /private/tmp/InstallAssistant.pkg

# Run the macOS 12.0.1 InstallAssistant.pkg
echo "macOS 12.0.1 is copying the installer to your Applications"
/usr/sbin/installer -pkg /private/tmp/InstallAssistant.pkg -target /Applications

# Delete the macOS 12.0.1 InstallAssistant.pkg
echo "Install Assistant is being deleted"
/bin/rm -R /private/tmp/InstallAssistant.pkg

