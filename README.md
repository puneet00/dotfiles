# getting started

## install yadm
```
sudo apt-get install yadm
# mac
brew install yadm
```

## clone dotfiles
```
yadm clone https://github.com/puneet00/dotfiles.git
```

## tools
### install zsh
```
sudo apt-get install zsh
chsh -s$(which zsh)
#plugins
git clone https://github.com/oldratlee/hacker-quotes.git ~/.oh-my-zsh/custom/plugins/hacker-quotes
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

### ohmyzsh
https://ohmyz.sh/#install
plugins:
https://github.com/oldratlee/hacker-quotes
https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
https://github.com/zsh-users/zsh-history-substring-search


### fonts
https://github.com/be5invis/Iosevka
macinstall steps : https://github.com/be5invis/Iosevka
```
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/IosevkaTerm.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/IosevkaTerm.zip \
&& cd ~/.local/share/fonts \
&& unzip IosevkaTerm.zip \
&& rm IosevkaTerm.zip \
&& fc-cache -fv
```

### starship
https://starship.rs/guide/

### cli tools
```
sudo apt install fzf
sudo apt-get install silversearcher-ag
```

#doom emacs
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation



#mac only apps
https://github.com/alienator88/Pearcleaner?tab=readme-ov-file


