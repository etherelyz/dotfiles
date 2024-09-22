> Note: This dotfiles repo and this set up instruction are specific for Debian on WSL 

## Prerequisites

- Install required packages
    - `build-essential procps curl file git`: build tools for [Homebrew on Linux](https://docs.brew.sh/Homebrew-on-Linux#requirements)
    - `wget`: used in installing VSCode Server in WSL
    
    ```bash
    sudo apt-get update
    sudo apt-get install build-essential procps curl file git wget
    ```

- Install zsh

    ```bash
    sudo apt install zsh
    chsh -s $(which zsh)
    ```
    
    - Then restart your shell, when "*Z Shell configuration function for new users*" appear, press `q` to exit.

## Set up

- Download and install this dotfiles repo

    ```shell
    git clone https://github.com/etherelyz/dotfiles.git "$HOME/.dotfiles"
    source $HOME/.dotfiles/install.zsh
    ```
    - Then restart your shell

## After set up

- Install Meslo Nerd Font for powerlevel10k ([Instruction](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k))

    - Install these 4 fonts (on windows): [1](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf) [2](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf) [3](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf) [4](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)
    
    - In Windows Terminal, open settings then select → *Debian* profile → *Appearance* → set *Font Face* to `MesloLGS NF`

    - In VSCode, set `"terminal.integrated.fontFamily": "MesloLGS NF"` in settings.json

- Edit private config files:
    - git private config: `config.private` in `config/git`

## Misc Note

- For some unknown reason, Debian doesn't create `zcompdump` file while Ubuntu does (probably the differences in `/etc/zsh/zshrc`)
