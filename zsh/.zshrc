if [ -f /Users/luis/.env ]; then
  set -a
  source /Users/luis/.env
  set +a
fi

# Aliases
alias ssh.key="cat ~/.ssh/id_rsa.pub"

## directories
alias oo="open ."
alias pr="cd /Volumes/data/"
alias dt="cd ~/Desktop"
alias dl="cd ~/Downloads"

## fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

prj() {
  local dir=$(find /Volumes/data/projects/*/* -type d -maxdepth 0 | sed "s|/Volumes/data/projects/||" | fzf --preview "ls -la /Volumes/data/projects/{}" | xargs -I {} echo /Volumes/data/projects/{})
  [ -d "$dir" ] && cd "$dir"
}

alias prjk='kiro $(find /Volumes/data/projects/*/* -type d -maxdepth 0 | sed "s|/Volumes/data/projects/||" | fzf --preview "ls -la /Volumes/data/projects/{}" | xargs -I {} echo /Volumes/data/projects/{})'
alias prjo='open "$(find /Volumes/data/projects/*/* -type d -maxdepth 0 | sed "s|/Volumes/data/projects/||" | fzf --preview "ls -la /Volumes/data/projects/{}" | xargs -I {} echo /Volumes/data/projects/{})"'
