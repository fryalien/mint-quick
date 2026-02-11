#!/bin/bash
set -e

fi="flatpak install flathub -y"

sudo apt remove -y firefox* thunderbird*

sudo apt install -y micro fish eza btop ripgrep mpv meld

$fi org.kde.tokodon
$fi com.brave.Browser
$fi eu.betterbird.Betterbird
$fi io.github.shiftey.Desktop #GitHub Desktop
$fi md.obsidian.Obsidian
$fi org.geany.Geany
$fi org.keepassxc.KeePassXC
$fi org.localsend.localsend_app
$fi org.signal.Signal
$fi org.telegram.desktop
$fi com.tutanota.Tutanota

mkdir -pv ~/.config/fish
curl -L https://raw.githubusercontent.com/fryalien/fish-config/refs/heads/main/ubuntu.fish -o ~/.config/fish/config.fish
sudo usermod -s /usr/bin/fish $USER

wget https://mega.nz/linux/repo/xUbuntu_24.04/amd64/megasync-xUbuntu_24.04_amd64.deb && sudo apt install -y "$PWD/megasync-xUbuntu_24.04_amd64.deb"

mkdir -pv ~/.config/micro/colorschemes
curl -L \
https://raw.githubusercontent.com/fryalien/dotfiles/main/themes-micro/catppuccin-mocha.micro \
-o ~/.config/micro/colorschemes/catppuccin-mocha.micro
echo '{ "colorscheme": "catppuccin-mocha" }' > ~/.config/micro/settings.json

echo "All done."
