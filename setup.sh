sudo apt-get install git
sudo bash -c 'echo "Asia/Yerevan" > /etc/timezone'
sudo dpkg-reconfigure keyboard-configuration
cd ~/Desktop && git clone https://gitlab.com/a.kolyan/tumo-helper-scripts.git
cp configs/okularpartrc /home/kubuntu/.config/
cd /tmp
mkdir /tmp/workingwith
sudo apt-get install jq keepassx terminator fish curl chromium-browser mplayer

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install npm
sudo npm install -g yarn

git config --global user.email "a.kolyan@hanuman.am"
git config --global user.name "hanuman"


curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code # or code-insiders

cp configs/okularpartrc /home/kubuntu/.config/

terminator & exit
