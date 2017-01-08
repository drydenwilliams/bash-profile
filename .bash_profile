#   -------------------------------
#   1. Prompt 
#   -------------------------------

    parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    }

    export PS1="\[\033[36m\]\w\[\033[m\]\[\033[32m\]\[\033[33;1m\]\$(parse_git_branch)\[\033[m\] $ "


#   -------------------------------
#   2. Paths
#   -------------------------------

    export PATH="$PATH:/usr/local/bin/"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"


#   -------------------------------
#   3. alias'
#   -------------------------------

# Git Shortcuts
alias gs='git status'
alias gst='git status -sb'
alias ga='git add'
alias gau='git add -u' # Removes deleted files
alias gp='git pull'
alias gpu='git push'
alias gc='git commit -v'
alias gca='git commit -v -a' # Does both add and commit in same command, add -m 'blah' for comment
alias gco='git checkout'
alias gl='git log --oneline'