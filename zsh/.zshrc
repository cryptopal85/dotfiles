# Specifies locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# .zshrc.local should specify path to ZSH, e.g.
# "export ZSH=/Users/username/.oh-my-zsh" on OS X
if [[ -f "~/.zshrc.local" ]]; then
  source ~/.zshrc.local
fi

# zsh completions - Homebrew
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh-completions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# homebrew completions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# prompt
autoload -U promptinit; promptinit
prompt spaceship

# Set theme
# ZSH_THEME="spaceship"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo git macos brew chucknorris)

# pyenv
# https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if which pyenv > /dev/null; then; eval "$(pyenv init --path)"; fi

# pyenv-virtualenv
# https://github.com/pyenv/pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Set default editor
export EDITOR="nova"

# Aliases
source ~/.aliases 2> /dev/null

# Local aliases
if [ -f ~/.aliases.local ]; then
  source ~/.aliases.local 2> /dev/null
fi

# Recommended setting for pyenv-virtualenv as prompt changing will be removed from future releases.
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Add virtual env to PS1
__pyenv_version_ps1() {
  local ret=$?;
  if [ -n "${PYENV_VIRTUAL_ENV}" ]; then
      echo -n "(${PYENV_VIRTUAL_ENV##*/}) "
  fi
  return $?
}
PS1="\$(__pyenv_version_ps1)${PS1}"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

# Created by `pipx` on 2022-04-13 23:21:31
export PATH="$PATH:/Users/gurkanhuray/.local/bin"

# source oh my zsh
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:/opt/homebrew/bin"
source ~/.oh-my-zsh/oh-my-zsh.sh

# source syntax highlighting - Homebrew
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh