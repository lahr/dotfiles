#!/bin/zsh

git pull;

function bootstrap() {
    rsync --exclude ".git/" \
      --exclude ".DS_Store" \
      --exclude ".macos" \
      --exclude "bootstrap.sh" \
      --exclude ".vscode-settings" \
      --exclude "README.md" \
      -avh --no-perms . ~;
    source ~/.zshrc
}

if [[ "$1" == "--force" ]] || [[ "$1" == "-f" ]]; then
    bootstrap;
else
    read "?This may overwrite existing files in your home directory. Are you sure? (y/N) ";
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        bootstrap;
    fi;
fi;
unset bootstrap;
