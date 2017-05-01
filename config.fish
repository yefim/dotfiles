set PATH /usr/local/bin $PATH
set PATH /usr/local/sbin $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
set PATH $HOME/go/bin $PATH
set PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH

set -x EDITOR /usr/local/bin/nvim

set -x GOPATH $HOME/go

alias vim=nvim
alias l=ls
alias rm='rm -v'
alias gst='git status'
alias gp='git push'
alias gl='git pull'
alias gb='git branch'
alias gc='git checkout'
alias grep='grep --color=always -I'
alias 'cd..'='cd ..'

function fish_greeting
  fortune -a
end

function fish_prompt --description 'Write out the prompt'
  if not set -q __fish_prompt_normal
    set -g __fish_prompt_normal (set_color normal)
  end

  # $USER
  echo -n "$USER:"

  # PWD
  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  printf '%s ' (__fish_git_prompt)

  echo -n '$ '

end

set -x LDFLAGS -L/usr/local/opt/openssl/lib
set -x CPPFLAGS -I/usr/local/opt/openssl/include
set -x PKG_CONFIG_PATH /usr/local/opt/openssl/lib/pkgconfig
