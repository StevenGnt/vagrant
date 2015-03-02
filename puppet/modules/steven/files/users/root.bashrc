# Custom colored prompt
export PS1="\[\e[31m\]\u\[\e[m\]@\[\e[33m\]\h\[\e[m\]:\[\e[32m\]\w\[\e[m\] "

# Bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi