# List 
alias ls='ls -aF'

# List only directories
alias lsd='ls -l | grep "^d"'

# Easier navigation: Thanks @mathias, @gf3, et al.
alias ..='cd ..'
alias cddf='cd $DOTFILES'
alias cdc='cd ~/Code/'
alias cdd='cd ~/Downloads/'
alias cds='cd ~/Code/kevinsuttle.github.io'

# Shortcuts
alias v='vim'
alias gvim='~/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias mvim='~/Applications/MacVim.app/Contents/MacOS/Vim -vf'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
# Thanks once again @Mathias
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update; cd ~/.rbenv/ && git pull; cd ~/.rbenv/plugins/ruby-build/ && git pull; cd'

# Commands
alias jsw='jekyll serve --watch'
