# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=50000
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
alias la='ls -a --color=never'
alias ll='ls -al --color=never'
alias grep='grep --color=auto'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias sudo='sudo '
alias lg='lazygit'
alias fly='/home/kenneth/.fly/bin/flyctl'
alias timews='timew summary'
alias windir='cd /mnt/c/Users/kenneth.lieyanto'
alias t='task'
alias tl='task list'
alias ta='task add'
alias currentread="cd '/mnt/d/Documents/Top Down Approach'"
alias notes='cd /mnt/d/notes'
alias timews='timew summary'
alias ls='ls --color=never'
alias fdfind='fd'
alias cat='batcat'

csh() {
    curl "cheat.sh/$1"
}

export PATH=$PATH:~/.config/tmux/bin
export PATH=$PATH:~/.local/bin
export MANPAGER='nvim +Man!'
export VISUAL=nvim
export FZF_DEFAULT_OPTS=" \
--height 50% --border --reverse"
export PATH="$PATH:/home/kenneth/.dotnet/tools"
export DOTNET_CLI_TELEMETRY_OPTOUT=1

bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^t "taskwarrior-tui\n"

eval "$(starship init zsh)"

# fnm
FNM_PATH="/home/kenneth/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/kenneth/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
