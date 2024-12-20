# Arch Linux - Post Install
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
sudo pacman -S --needed wireplumber
sudo pacman -S --neeeded qemu-audio-pipewire
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
