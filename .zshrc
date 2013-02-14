alias grep='grep --color=auto'
alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

autoload colors; colors
export PS1="%n:%~ %{$fg[green]%}$%{$reset_color%} "

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/gems/ruby-1.9.3-p194/bin
PATH=$PATH:$HOME/.rvm/gems/ruby-1.9.3-p194@global/bin

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
