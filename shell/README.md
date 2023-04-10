# macOS - configuration
## .zprofile
assuming you are have installed some JDKsand  nvim. If you don't have them installed, you don't have to add these.
```
export JAVA_HOME=`/usr/libexec/java_home -v 19`
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HOME/tools/nvim-macos/bin:$PATH
```

# .zshrc
```
# >>> git >>>
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{39}'
COLOR_GIT='%F{197}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n@%M ${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '
# <<< git <<<
```






