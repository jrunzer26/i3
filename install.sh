echo install script

echo '*** Updating system ***'
sudo apt-get update
sudo apt-get upgrade

echo '*** Installing Software ***'

echo 'Installing NodeJs'
sudo apt-get install --yes nodejs
echo 'Finished installing NodeJs'

echo 'Installing Ranger'
sudo apt-get install --yes ranger
echo 'Finished installing Ranger'

echo 'Installing Spotify'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install --yes spotify-client
echo 'Finished installing Spotify'

echo 'Installing VS code'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install --yes apt-transport-https
sudo apt-get update
sudo apt-get install --yes code
echo 'Finished installing VS code'

echo 'install feh & compton for wallpapers'
sudo apt-get install --yes feh
sudo apt-get install --yes compton
echo 'Finished installing feh & compton'

echo 'might need to install pcmanfm'

echo '*** Finished installing software ***'


echo '*** Installing i3gaps ***'
./i3-gaps.sh
echo '*** Finished installing i3gaps ***'

echo '*** Linking configuration files ***'
echo 'Linking i3config'
mkdir ~/.config/i3
mkdir ~/.config/i3status
ln i3status/config ~/.config/i3status/config
ln i3config/config ~/.config/i3/config

echo 'Linking vim config'
ln vimconfig/vimrc ~/.vimrc

echo 'Linking bash_alias & bashrc & profile'
ln bash/bash_aliases ~/.bash_aliases
ln bash/bashrc ~/.bashrc
echo 'missing profile link'

echo 'Installing vim vundle'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo 'Linking wallpapers'


echo '*** Finished linking configurations ***'

echo '*** Finished Installation ***'
