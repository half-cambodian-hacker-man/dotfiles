# npm packages in PATH
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"

export DENO_HOME="$HOME/.deno"
export PATH="$DENO_HOME/bin:$PATH"

# Source environment for nvm if installed
if [ -f "/usr/share/nvm/init-nvm.sh" ]
then
    nvm () { source /usr/share/nvm/init-nvm.sh && nvm $@ }
fi

# Editor and pager
export EDITOR="vim"
export VISUAL="less"

bindkey -e # Even though vim is $EDITOR, we want emacs-esque line editing.