# Arch Linux - Installed Packages
_______________________________________________________________________________
## Update the system

Sync the current operating system with all of the packages that have come
out since the packages that have been released since you installed the ISO
image. 
```
sudo pacman -Syu

```

pacman -Q > default_installed_packages.md

pacman -Qe > explicit_default_installed_packages.md

_______________________________________________________________________________
## Install the Rust programming language (This is required by Paru)

```
sudo pacman -S --needed rustup 
```

Download the lastest stable release of Rust compiler and set it as the default Rust compiler on your system.

```
rustup default stable
```

Next use rustup to install rust-analyzer. This is better than installing Rustup from your package manager. This is because installing using rustup will ensure that the version of the lsp matches the version of rust that rustup is using.
```
rustup component add rust-analyzer
```

Add Rust to your path by adding this line to your .zshrc

find ~/.rustup -name "rust-analyzer"

```
export PATH="$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin:$PATH"
```

```
export PATH="$HOME/.cargo/bin:$PATH"
```

_______________________________________________________________________________
To check that everything is working:

~ 
❯ rustup --version
rustup 1.27.1 (2024-05-07)
info: This is the version for the rustup toolchain manager, not the rustc compiler.
info: The currently active `rustc` version is `rustc 1.83.0 (90b35a623 2024-11-26)`

~ 
❯ rustc --version
rustc 1.83.0 (90b35a623 2024-11-26)

~ 
❯ rust-analyzer --version
rust-analyzer 1.83.0 (90b35a6 2024-11-26)

_______________________________________________________________________________
## Install an AUR helper

https://github.com/Morganamilo/paru

```
sudo pacman -S --needed base-devel
mkdir -p ~/.aur-helper 
cd .aur-helper

(Not done!!! Install Rust first)
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

_______________________________________________________________________________
Backup terminal emulator

sudo pacman -S --needed kitty

_______________________________________________________________________________
### Create your wezterm config

```
cd ~
mkdir -p ~/.config/wezterm
cd .config/wezterm
touch wezterm.lua
```
_______________________________________________________________________________
### Load my shell settings

```
sudo pacman -S zsh
sudo pacman -S zsh-syntax-highlighting
sudo pacman -S starship
```
First confirm that zsh is installed:
```
zsh --version
```

Next locate the path to the zsh binary:
```
which zsh
```

Change your shell to zsh:
```
chsh -s /usr/bin/zsh
```

After this close the terminal and re-open it.

Then run this command to confirm that your default shell has been changed
to zsh:
```
echo $SHELL
```

When it opens up just press `q` to quit. 

Then create your .zshrc file:
`touch .zshrc`

Run this command after switching to starship, and you already have a nerd
font:

```
starship preset nerd-font-symbols -o ~/.config/starship.toml
```
_______________________________________________________________________________

Add this to the bottom of your `.zshrc` file:

```
eval "$(starship init zsh)"
```
_______________________________________________________________________________
Version Control
```
sudo pacman -S git
```
_______________________________________________________________________________
Sound

NOTE: `--needed` will only take action if pipewire is not installed,
or if you have pipewire but it is outdated.

```
sudo pacman -S --needed pipewire 
sudo pacman -S --needed lib32-pipewire
sudo pacman -S --needed pipewire-pulse
sudo pacman -S --needed pipewire-alsa
sudo pacman -S --neeeded qemu-audio-pipewire

sudo pacman -S --needed alsa-firmware
sudo pacman -S --needed alsa-tools
sudo pacman -S --needed lib32-alsa-lib

sudo pacman -S --needed wireplumber
sudo pacman -S --needed sof-firmware
```

### AUR packages

```
paru -S pwvucontrol 
```
_______________________________________________________________________________
Clipboard

```
wl-clipboard 
wl-clip-persist
cliphist
```
_______________________________________________________________________________
Desktop Environment
```
sudo pacman -S --needed wezterm
sudo pacman -S --needed hyprland
sudo pacman -S --needed qt5-wayland
sudo pacman -S --needed qt6-wayland

sudo pacman -S --needed dunst
sudo pacman -S --needed xdg-desktop-portal-hyprland
sudo pacman -S --needed xdg-desktop-portal-gtk

```
_______________________________________________________________________________
Code Editor:
```
sudo pacman -S neovim
```
_______________________________________________________________________________
Web browser:

```
sudo pacman -S firefox
```
_______________________________________________________________________________
Wallpapers:

```
sudo pacman -S hyprpaper
```

_______________________________________________________________________________
Language Servers

-- Lua

```
sudo pacman -S lua-language-server
```

_______________________________________________________________________________
Fonts

```
sudo pacman -S ttf-meslo-nerd
```
_______________________________________________________________________________
### Terminal (Nicer Outputs

```
sudo pacman -S --needed lsd 
sudo pacman -S --needed tree
```
_______________________________________________________________________________

For zsh syntax highlighting first check where the file is on your system

❯ sudo find /usr/ -name zsh-syntax-highlighting.zsh
[sudo] password for dezly-macauley: 
/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

Then once you find it add this line to the end of your .zshrc

It should be placed after the starship shell prompt, otherwise starship
will overwrite this syntax highlighting

_______________________________________________________________________________

```
sudo pacman -S --needed zsh-autosuggestions
```
_______________________________________________________________________________

