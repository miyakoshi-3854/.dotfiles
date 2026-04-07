# starship有効化
eval "$(starship init zsh)"

# mise有効化
eval "$(mise activate zsh)"

# fzf有効化
source <(fzf --zsh)

# path適応
export PATH="$HOME/.local/bin:$PATH"

# get repo list
function ghq-fzf() {
  local repo=$(ghq list | fzf --query="$1")
  if [ -n "$repo" ]; then
    cd "$(ghq root)/$repo"
  fi
}
alias r=ghq-fzf

# create branch
function gwq-fzf() {
  local repo=$(ghq list | fzf --query="$1")
  if [ -z "$repo" ]; then return; fi

  local repo_path=$(ghq root)/$repo
  cd "$repo_path"

  echo -n "New branch name: "
  read branch
  if [ -z "$branch" ]; then
    echo "キャンセルしました"
    return
  fi

  gwq add -b "$branch" -s
}
alias wc=gwq-fzf

# remove branch
alias wr="gwq remove"

# prune directory
alias wp="gwq prune"

# mise shortcut
alias mr="mise run"

# cursor shortcut
alias c="cursor ."
