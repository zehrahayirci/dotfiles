export PATH="$HOME/.gem/ruby/X.X.0/bin:$PATH"
export JAVA_HOME="$(/usr/libexec/java_home)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/zehra/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/zehra/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zehra/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/zehra/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

