#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
#zmodload zsh/zprof
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export TERM=xterm-256color

if [ -f ~/.zsh_local_config ]; then
  source ~/.zsh_local_config
else 
  print "ERROR: missing file ~/.zsh_local_config"
fi


#autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /usr/local/bin/terraform terraform

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
