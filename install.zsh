# Don't try to clone the dotfile repo again if it already exists
if [[ -d $HOME/Code/dotfiles ]]
then
	ln -sf $HOME/Code/dotfiles/gitconfig $HOME/.gitconfig
	ln -sf $HOME/Code/dotfiles/gitignore $HOME/.gitignore
	ln -sf $HOME/Code/dotfiles/hushlogin $HOME/.hushlogin
  ln -sf $HOME/Code/dotfiles/zlogin $HOME/.zlogin
  ln -sf $HOME/Code/dotfiles/zshenv $HOME/.zshenv
	ln -sf $HOME/Code/dotfiles/zshrc $HOME/.zshrc
else
	git clone https://github.com/kevinSuttle/dotfiles.git $HOME/Code/dotfiles
  git clone https://github.com/sindresorhus/pure $HOME/Code/pure-zsh/
  ln -s "$HOME/Code/pure-zsh/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
fi

exec $SHELL -l
