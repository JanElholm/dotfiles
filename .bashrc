
if [ -f .bash_prompt ]; then
  source .bash_aliases
fi

if [ -f .bash_prompt ]; then
  source .bash_prompt
fi

eval "$(starship init bash)"
