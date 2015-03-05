# SSH Agent / Keychain
#eval `keychain -Q --eval --agents ssh --inherit any-once --quiet id_rsa`

# PATH alterations
#export SSH_AUTH_SOCK=/Users/ian/.ssh/ssh-agent.pipe
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export PATH=$HOME/.rbenv/bin:./node_modules/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:$JAVA_HOME/bin:$HOME/.gem/ruby/1.8/bin:$HOME/bin:$PATH
export RBENV_ROOT=/usr/local/var/rbenv
export CLASSPATH=.:$JAVA_HOME/lib/classes.zip
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

# makes color constants available
#autoload -U colors
#colors

# enable colored output from ls, etc
export CLICOLOR=1

# expand functions in the prompt
#setopt prompt_subst

# stop same-line text wrapping
shopt -s checkwinsize

# set default editor
export EDITOR=/usr/bin/edit

source ~/.aliases
source ~/.cliprompt

# Bash Completion
# This is preventing this file from loading
#source ~/.bash_completion

# rbenv stuff
eval "$(rbenv init -)"
