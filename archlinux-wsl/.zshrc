#!/bin/zsh

source  ~/antigen/bin/antigen.zsh

# Alis some commands
alias ls='k'
alias ll='ls -la'
# alias cd='z'

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Third-party bundle.
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle hlissner/zsh-autopair
antigen bundle supercrabtree/k
antigen bundle agkozak/zsh-z

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply
