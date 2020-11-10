# SSH Agent / Keychain
#eval `keychain -Q --eval --agents ssh --inherit any-once --quiet id_rsa`

# PATH alterations
#export SSH_AUTH_SOCK=/Users/ian/.ssh/ssh-agent.pipe
#export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=./node_modules/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:$JAVA_HOME/bin:$HOME/.gem/ruby/1.8/bin:$HOME/bin:$PATH
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

# chruby initialisation scripts
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby ruby-2.6.6

# options to tell ruby-build to use the Homebrew-installed version of OpenSSL
# NB: without this ruby-build will install OpenSSL for each version of Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

source ~/.aliases
source ~/.cliprompt

# Bash Completion
# This is preventing this file from loading
#source ~/.bash_completion
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#  . `brew --prefix`/etc/bash_completion
#fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash