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
setopt prompt_subst

# stop same-line text wrapping - commenting out in ZSH as shopt doesn't appear to be supported
# shopt -s checkwinsize

# set default editor
export EDITOR=/usr/bin/edit

# chruby initialisation scripts
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

chruby ruby-2.7.2

# options to tell ruby-build to use the Homebrew-installed version of OpenSSL
# NB: without this ruby-build will install OpenSSL for each version of Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

source ~/.aliases
source ~/.cliprompt

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ] && . /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ] && . /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ] && . /Users/ian/.nvm/versions/node/v8.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Google Cloud SDK
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
