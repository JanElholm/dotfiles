# Dotfiles

My configuration files for bash, nvim, tmux and so forth.

# Setup Notes

The intention is to be able to run a series of stow commands 
to get my dotfiles up and running quickly after cloning the repo
on a Mac or Ubuntu (WSL) system.

If the dotfiles are cloned to ~/Repos/github.com/JanElholm/dotfiles, by running
``` bash
git clone https://github.com/JanElholm/dotfiles.git
```
I should be able to run the following type of stow commands:
``` bash
stow -d ~/Repos/github.com/JanElholm/dotfiles -t ~/ bash
stow -d ~/Repos/github.com/JanElholm/dotfiles -t ~/ nvim
stow -d ~/Repos/github.com/JanElholm/dotfiles -t ~/ alacritty
```
Running the commands will create symlinks in the home directory to the files
in the dotfiles repo.

## Pomodoro setup

Go to this site: github.com/rwxrob/pomo

Type
``` bash
go install github.com/rwxrob/pomo/cmd/pomo@latest
```
This will install the pomo command in /Users/janelholm/go/bin/pomo

Add this folder to your PATH in your $PROFILE file which is also in the repo under 
powershell folder

