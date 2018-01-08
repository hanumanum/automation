sudo apt-get -y install git
bash setup.git.sh
sudo bash -c 'echo "Asia/Yerevan" > /etc/timezone'
sudo dpkg-reconfigure keyboard-configuration
cp configs/okularpartrc /home/kubuntu/.config/
cd ~/Desktop && git clone https://gitlab.com/a.kolyan/tumo-helper-scripts.git
cd /tmp

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get -y install google-chrome-stable


mkdir /tmp/workingwith
#sudo apt-get -y chromium-browser
sudo apt-get -y install jq keepassx terminator fish curl mplayer htop

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo chown -R $USER:$(id -gn $USER) /home/kubuntu/.config
#sudo apt-get install npm #may be not necessary
sudo npm install -g yarn
sudo npm install -g nodemon

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get -y install code # or code-insiders
sudo apt-get install firefox
cp -R  /media/kubuntu/USB\ DISK/automation/configs/Code/User/ /home/kubuntu/.config/Code/
cp -R  /media/kubuntu/USB\ DISK/automation/configs/keepassx/ /home/kubuntu/.config/
sudo apt-get -y install shutter
sudo apt autoremove -y
terminator --execute 'fish' & exit
