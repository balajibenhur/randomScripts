#!/bin/bash
# Author Ryan Nolette
# Date Modified 06/26/2016
#This script is used to configure homebew
#############################################

#get the list of commands and options that can be used with brew:
man brew

#To list software you currently have installed with version numbers, use:
brew list --versions

#list all cask Apps
brew cask list

#To see just the software, which is not a dependency of another:
brew leaves

#To keep the Homebrew itself up-to-date, and fetch the newest version from GitHub:
brew update

#After updating the brew, check which formulae have an updated version available, display detailed version information to see if you have more than one older version laying around:
brew outdated --verbose

#See any app that you no longer need and want to get rid of them? Check the dependencies for all installed formulae:
brew deps --installed

#For even more detailed picture, show the dependencies for all installed formulae as a tree:
brew deps --installed --tree

#As a final precaution before removing a formula, see what other installed formulae use it as a dependency:
brew uses --installed formula

#Uninstall formulae and all their older versions:
#brew remove --force formulae

#Upgrade remaining formulae:
brew upgrade

#Show what will be removed by cleanup command, but do not actually remove anything:
brew cleanup -ns

#Clean the "Cellar" removing any older versions of installed formulae and clearing old downloads from the Homebrew download-cache. Additionally, scrub the cache, removing downloads for even the latest versions of formula, which are downloaded, but not installed:
#brew cleanup -s

#You can upgrade all installed casks using the following shell command:
#brew cask list | xargs brew cask install --force
