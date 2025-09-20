# mac
``` sh
https://brew.sh/
brew install font-fira-code
brew install yadm
brew install zoxide
brew install lsd
brew install zsh
brew install --cask font-monaspace
brew install --cask font-ia-writer-quattro

```


# getting started
```sh

yay -S yadm zsh fzf the_silver_searcher zoxide vim lsd
yay -S telegram-desktop mullvad-vpn discord obsidian
yay -S ttf-ia-writer
```

## install yadm
``` sh
yay -S yadm
```

## clone dotfiles
``` sh
yadm clone git@github.com:puneet00/dotfiles.git
# vim theme
git clone https://github.com/lifepillar/vim-solarized8.git \
    ~/.vim/pack/themes/opt/solarized8
```

## tools
### install zsh
``` sh
yay -S zsh
chsh -s $(which zsh)

```

## ohmyzsh
https://ohmyz.sh/#install


### plugins
``` sh
git clone https://github.com/oldratlee/hacker-quotes.git ~/.oh-my-zsh/custom/plugins/hacker-quotes
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone "https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git" "$ZSH_CUSTOM/plugins/autoswitch_virtualenv"

```

### fonts
https://github.com/be5invis/Iosevka
macinstall steps : https://github.com/be5invis/Iosevka
``` sh
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
https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation
https://docs.atuin.sh/#quickstart
```
```

#doom emacs
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation

# dev setup
https://itsfoss.com/install-docker-arch-linux/
``` sh
yay -S docker docker-compose
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world

## SQL client
yay -S dbeaver

```



# mac only apps
https://github.com/alienator88/Pearcleaner?tab=readme-ov-file
https://matthewpalmer.net/rocket/
https://numi.app/
https://www.alfredapp.com/
https://www.raycast.com/
https://code.visualstudio.com/docs/?dv=osx
https://www.synaptics.com/products/displaylink-graphics/downloads/macos
https://www.mowglii.com/itsycal/
https://tunnelblick.net/downloads.html
https://ticktick.com/download?language=en_us




