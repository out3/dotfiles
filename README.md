Installation pour Arch-Linux

# Prerequisite
- CLI :
    - [exa](https://github.com/ogham/exa)
    - [fd](https://github.com/sharkdp/fd)
    - [fzf](https://github.com/junegunn/fzf)
    - git
    - [Lazygit](https://github.com/jesseduffield/lazygit)
    - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
    - [ripgrep](https://github.com/BurntSushi/ripgrep)
    - [tmux](https://github.com/tmux/tmux/wiki/Installing)
    - [trash-cli](https://github.com/andreafrancia/trash-cli)
    - tree
    - zip
    - [Zsh](https://www.zsh.org/)
- Python
    - [python3](https://www.python.org/)
    - [pip3](https://pypi.org/project/pip/)
    - [uv](https://github.com/astral-sh/uv)
- NodeJS
	- [node + npm](https://github.com/nodesource/distributions)
	- [pnpm](https://github.com/pnpm/pnpm)

# Installation process
```bash
# Update packages
sudo pacman -Syu --noconfirm

# Install prerequisites
sudo pacman -Sy --noconfirm \
    curl exa fd fzf git lazygit ripgrep tmux trash-cli tree unzip zip zsh \
    python python-pip uv \
    nodejs npm pnpm \

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Import dotfiles
cd ~
git clone git@github.com:out3/dotfiles.git --recursive .dotfiles
cd .dotfiles && ./install
source ~/.zshrc
tmux source-file ~/.tmux.conf
```
