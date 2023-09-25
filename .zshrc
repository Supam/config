# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/tiki/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

setopt hist_ignore_all_dups

bindkey '^H' backward-kill-word
bindkey '5~' kill-word

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{yellow}  %b %f'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='╭─ %F{green}%n@%m:%F{blue}%~%f
╰─ $ '
RPROMPT=\$vcs_info_msg_0_

# Alias
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias bat=batcat

alias gitl='git log --oneline -8'
alias gitp='git push --follow-tags'
alias gitu='git add -u' 
alias gits='git status' 
