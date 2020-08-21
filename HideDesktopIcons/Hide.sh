#!/bin/zsh
#  Hide.sh
#  HideDesktop
#
#  Created by Joe Pool on 21/08/2020.
#

defaults write com.apple.finder CreateDesktop -bool false
killall Finder
