## Prerequisites

- Install build tools ([Homebrew on Linux](https://docs.brew.sh/Homebrew-on-Linux#requirements))

    ```bash
    sudo apt-get update
    sudo apt-get install build-essential procps curl file git
    ```

- Install zsh

    ```bash
    sudo apt install zsh
    chsh -s $(which zsh)
    ```
    
    - Then restart your shell, when *Z Shell configuration function for new users* appear, press q to exit.

## Set up

```shell
git clone https://github.com/etherelyz/dotfiles.git "$HOME/.dotfiles"
$HOME/.dotfiles/install.zsh
```
then restart your shell

## After setup

- Install Meslo Nerd Font for powerlevel10k ([Instruction](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k))

    - For those who use WSL and VSCode like me:

        - Download and install these 4 font files: [1](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf) [2](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf) [3](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf) [4](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf) (It doesn't matter where you save the files, you can delete them after installing the font.)
        
        - In Windows Terminal, open setting then navigate to → *Defaults* (or the profile you want) → *Appearance* → set *Font Face* to `MesloLGS NF`

        - In VSCode, click the cog button at the bottom left → click *Settings* → type `terminal.integrated.fontFamily` in the search bar → in *Font Family* field, set the value to `MesloLGS NF` → restart VSCode

* Edit `gitconfig.personal` file to your personalized setting (e.g. username and email)

## Acknowledgement

Inspired by different dotfiles I have looked around, notably [this](https://github.com/holman/dotfiles) and [this](https://github.com/z0rc/dotfiles).
