echo "fix config links"

mkdir ~/.config/i3
mkdir ~/.config/i3status
rm ~/.config/i3status/config
rm ~/.config/i3/config
ln i3status/config ~/.config/i3status/config
ln i3config/config ~/.config/i3/config
mkdir ~/Wallpapers