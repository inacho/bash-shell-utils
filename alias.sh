#!/usr/bin/env bash


# Recursively delete .svn directories of current directory
alias rmsvn='rm -rf `find . -type d -name .svn`'

# Show the external IP
alias getmyip='dig +short myip.opendns.com @resolver1.opendns.com'

# Check web page download time
alias curltime='curl -s -w "%{time_total} seconds\n" -o /dev/null'

# Clear the DNS cache in OS X
alias flushhosts='dscacheutil -flushcache'

# Open the current directory in Finder
alias finder_open='open . -a finder.app'

# Show the hidden files in Finder
alias finder_hidden='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'

# Don't show the hidden files in Finder
alias finder_hidden_no='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'
