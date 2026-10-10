#!/usr/bin/env bash

# Enable `Group windows by application`
defaults write com.apple.dock expose-group-apps -bool true && killall Dock

# Disable `Displays have separate Spaces`
defaults write com.apple.spaces spans-displays -bool true && killall SystemUIServer

# Set `Automatically hide and show the menu bar` to `Always`
defaults write NSGlobalDomain _HIHideMenuBar -bool true

# Enable `Automatically hide and show the Dock`
defaults write com.apple.dock autohide -bool true

# Remove Dock animation delay
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

killall Finder >/dev/null 2>&1 || true
killall Dock >/dev/null 2>&1 || true
killall SystemUIServer >/dev/null 2>&1 || true
