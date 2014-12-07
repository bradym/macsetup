# OSX Setup Script

# Install system updates
sudo softwareupdate -i -a

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Settings for installing casks
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

# Changes to the dock
dockutil --add '/Applications/PhpStorm.app'
dockutil --add '/Applications/Google Chrome.app'
dockutil --add '/Applications/MacVim.app'
dockutil --add '/Applications/Sequel Pro.app'
dockutil --add '/Applications/SourceTree.app'
dockutil --add '/Applications/Dash.app'
dockutil --add '/Applications/iTerm.app'
dockutil --add '/Applications/'
dockutil --add '/Applications/'
dockutil --add '/Applications/'
dockutil --add '/Applications/'
dockutil --add '/Applications/'
dockutil --remove 'Launchpad'
dockutil --remove 'App Store'
dockutil --remove 'iTunes'
dockutil --remove 'Pages'
dockutil --remove 'Numbers'
dockutil --remove 'Keynote'

# Use coreutils without g prefix
echo 'PATH="/usr/local/opt/coreutils/libexec/gnubin:$(pear config-get bin_dir):$PATH"' >> ~/.bash_host

# Make man pages available for coreutils
echo 'MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"' >> ~/.bash_host

# Install ruby gems in homebrew path
echo 'export GEM_HOME="/usr/local"' >> ~/.bash_host


