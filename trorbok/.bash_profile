#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -d ~/bin ]] && PATH=${PATH}:~/bin

eval $(keychain --eval --agents ssh -Q --quiet id_ecdsa)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
