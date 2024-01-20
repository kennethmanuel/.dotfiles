# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kenneth/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias o='xdg-open'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al'
alias grep='grep --color=auto'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias sudo='sudo '
alias vim='nvim'
alias lg='lazygit'
alias fly='/home/kenneth/.fly/bin/flyctl'

export PATH=$PATH:~/.config/tmux/bin
export PATH=$PATH:~/.local/bin
export MANPAGER='nvim +Man!'
export VISUAL=nvim
export FZF_DEFAULT_OPTS=" \
--height 50% --border --reverse"
export EDITOR=nvim

bindkey -s ^f "tmux-sessionizer\n"

eval "$(starship init zsh)"

# fzf shell extensions
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

