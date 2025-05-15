# Fail on any command.
set -eux pipefail

# Install Powerline for VIM.
sudo apt install -y python3-pip
pip3 install powerline-status
sudo cp configs/.vimrc ~/.vimrc
sudo apt install -y fonts-powerline

# Install Patched Font
sudo cp -a fonts/. ~/.fonts/
fc-cache -vf ~/.fonts/
