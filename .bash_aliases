if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias composer='PHP_INI_SCAN_DIR=/etc/php/7.0/composer/conf.d/ composer'
alias s2con='php app/console'
alias s2cc='php app/console cache:clear'
alias s2ad='php app/console assetic:dump'
alias s3con='php bin/console'
alias s3cc='php bin/console cache:clear'
alias showcommit='git diff-tree --no-commit-id --name-status -r'
alias fixcode='php-cs-fixer --config-file=.php_cs fix'
alias gitlsmc='git diff --cached --name-status --diff-filter=ACMRTU' # git list modified files - cached
alias gitlsm='git diff --name-status --diff-filter=ACMRTU' # git list modified files - not staged
alias gitlog='git log --format="%C(auto)%H %C(cyan)%an %C(reset)%s"'
alias cat='ccat --bg=dark'
alias check4LF='while read fn; do test "$(tail -c 1 $fn)" && echo No new line at the end of $fn; done'
alias terminal="gnome-terminal --working-directory=$PWD"

