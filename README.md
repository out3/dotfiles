# Install dotfiles
```bash
cd ~
git clone git@github.com:out3/dotfiles.git --recursive .dotfiles
cd .dotfiles && ./install
source ~/.zshrc
tmux source-file ~/.tmux.conf
```
# Prerequisite
- CLI :
    - [exa](https://github.com/ogham/exa)
    - [fd](https://github.com/sharkdp/fd)
    - [fzf](https://github.com/junegunn/fzf)
    - git
    - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
    - [ripgrep](https://github.com/BurntSushi/ripgrep)
    - [tmux](https://github.com/tmux/tmux/wiki/Installing)
    - tree
    - [Zsh](https://www.zsh.org/)
- Python
    - [python3](https://www.python.org/)
    - [pip3](https://pypi.org/project/pip/)
	- [virtualenv](https://pypi.org/project/virtualenv/)
	- [virtualenvwrapper](https://pypi.org/project/virtualenvwrapper/)
- NodeJS
	- [node + npm](https://github.com/nodesource/distributions)
	- [pnpm](https://github.com/pnpm/pnpm)

```bash
# Update repositories
apt update

# Install prerequisites
apt install -y curl git

# CLI
apt install -y tmux exa fzf fd-find ripgrep tree thefuck

# Python3.11 + env wrapper
add-apt-repository ppa:deadsnakes/ppa -y
apt install -y python3.11 python3-dev python3.11-venv python3-pip
pip3 install virtualenvwrapper

# NPM + PNPM
curl -fsSL https://deb.nodesource.com/setup_21.x | bash - &&\
apt install -y nodejs
apt install npm
npm install -g pnpm

# Zsh + Oh my ZSH
apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
