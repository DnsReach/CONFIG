if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="/home/dns/.local/share/gem/ruby/3.0.0/bin:$PATH"
export PATH="/home/dns/.local/bin/black:$PATH"
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(git)
plugins=(fzf)

alias img="/bin/catimg"
alias v="vim"
alias con="v ~/.vimrc"
alias e="exit"
alias t="tmux"
alias c="clear"
alias tmx="tmux source ~/.tmux.conf"
alias ls='colorls'
alias nano="echo nutella"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
