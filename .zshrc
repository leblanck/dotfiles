# Get Logged In User
userName=$(/usr/bin/stat -f%Su /dev/console)

# Path to your oh-my-zsh installation.
export ZSH="/Users/$userName/.oh-my-zsh"

plugins=(git extract)

source $ZSH/oh-my-zsh.sh

alias work="timer 20m && terminal-notifier -message 'Pomodoro'\
            -title 'Work Timer is up! Break Time! 🥳'\
            -appIcon '~/Pictures/Clock.png'\
            -sound Crystal"

alias break="timer 5m && terminal-notifier -message 'Pomodoro'\
            -title 'Break is over! Back To Work... 😓'\
            -appIcon '~/Pictures/Clock.icns'\
            -sound Crystal"

alias break-long="timer 10m && terminal-notifier -message 'Pomodoro'\
            -title 'Break is over! Back To Work... 😓'\
            -appIcon '~/Pictures/Clock.icns'\
            -sound Crystal"

alias v="nvim"
alias e="exit"
alias z="zed $1"
alias py="python3"
alias ls="eza --color=auto --long --git --icons=always"
alias keg="zsh ~/repos/keg/keg.sh"
alias readme="glow README.md"
alias howto="glow ~/howto.md"
alias clr="clear"
alias repos="cd ~/repos"
alias dflip="sudo /Users/kleblanc/dns-flip.sh"
alias weather="curl -s wttr.in | head -n 7"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Poetry Setup
export PATH="/Users/$userName/.local/bin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#PYENV Setup
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

export PATH=/opt/homebrew/bin:/Users/n1517117/.gem/ruby/3.0.0/bin:/usr/local/opt/ruby/bin:/Users/n1517117/.local/bin:/Users/n1517117/.pyenv/shims:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Privileges.app/Contents/Resources:/Users/n1517117/.fig/bin:/Users/n1517117/.local/bin
export PATH=/usr/local/go/bin:/opt/homebrew/bin:/Users/n1517117/.gem/ruby/3.0.0/bin:/usr/local/opt/ruby/bin:/Users/n1517117/.local/bin:/Users/n1517117/.pyenv/shims:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Privileges.app/Contents/Resources:/Users/n1517117/.fig/bin:/Users/n1517117/.local/bin

eval "$(starship init zsh)"
