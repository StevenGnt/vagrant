# Custom colored prompt
export PS1="\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[00;31m\]\W\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

# Bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi