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
    - [cli-trash](https://github.com/andreafrancia/trash-cli)
    - [exa](https://github.com/ogham/exa)
    - [fd](https://github.com/sharkdp/fd)
    - [fzf](https://github.com/junegunn/fzf)
    - git
    - [Lazygit](https://github.com/jesseduffield/lazygit)
    - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
    - [ripgrep](https://github.com/BurntSushi/ripgrep)
    - [tmux](https://github.com/tmux/tmux/wiki/Installing)
    - tree
    - zip
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
sudo apt update

# Install prerequisites
sudo apt install -y curl git

# CLI
sudo apt install -y zip tmux exa fzf fd-find ripgrep trash-cli tree thefuck

# Python3.11 + env wrapper
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install -y python3.11 python3-dev python3.11-venv python3-pip
pip3 install virtualenvwrapper

# NPM + PNPM
curl -fsSL https://deb.nodesource.com/setup_21.x | bash - &&\
sudo apt install -y nodejs
sudo apt install npm
npm install -g pnpm

# Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# Zsh + Oh my ZSH
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
