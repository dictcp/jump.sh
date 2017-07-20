
if [[ -n "$ZSH_VERSION" ]]; then
    autoload bashcompinit
    bashcompinit
fi

_jumpsh() 
{
    local cur opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    names="$(~/.jumphost/bin/find-hosts.sh | cut -f1)"

    COMPREPLY=( $(compgen -W "${names}" -- ${cur}) )
    return 0
}
complete -F _jumpsh jump.sh

export PATH="$HOME/.jumphost/bin:$PATH"
