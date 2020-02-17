# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%F{011}%b%f)'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
#PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '
PROMPT='%F{166}%m%f🐳 %F{30}${PWD/#$HOME/~}%f ${vcs_info_msg_0_}%{$fg_bold[white]%}$%{$reset_color%} '

export PATH=${PATH}:/usr/local/mysql/bin/
