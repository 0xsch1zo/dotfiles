HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=${HISTSIZE}
export GOPATH=$HOME/go
export PATH="${PATH}:${HOME}/sources/projects/bin:${GOPATH}/bin:${HOME}/.config/tmux/plugins/tmuxifier/bin"
export EDITOR="nvim"
#eval $(keychain --eval id_git -q)
setopt autocd extendedglob
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space

# Tmuxifier
eval "$(tmuxifier init -)"
 
# Keybinds
bindkey -v
bindkey -a 'm' history-search-backward
bindkey -a 'n' history-search-forward

# Pywal
source ~/.cache/wal/colors-tty.sh

# Aliases
command -v 'bat' 2&>1 > /dev/null && alias cat='bat'
command -v 'lsd' 2&>1 > /dev/null && alias ls='lsd'
command -v 'grc' 2&>1 > /dev/null && alias go='grc go'
alias grep='grep --color=auto'

export FZF_DEFAULT_OPTS="--color=16"

zstyle ':fzf-tab:*' fzf-flags $(echo $FZF_DEFAULT_OPTS)
zstyle :compinstall filename '/home/sentience/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit if not installled
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir "$(dirname ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# PLugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

autoload -U compinit && compinit

zinit cdreplay -q

# oh-my-posh
eval "$(oh-my-posh init zsh --config /home/sentience/.config/oh-my-posh/config.toml)"

# fzf
eval "$(fzf --zsh --color=16)"
