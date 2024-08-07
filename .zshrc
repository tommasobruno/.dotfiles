# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Aliases
alias vim="nvim"
alias vvim="nvim"
alias ls="ls -alG"

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
      
zstyle ':vcs_info:git:*' formats '%b '

RPROMPT=""
setopt PROMPT_SUBST

PROMPT="%F{blue}%~%f %F{yellow}"\$\{vcs_info_msg_0_}"%f$ "
