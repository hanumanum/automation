#xrandr --output eDP --mode 1920x1080 --rate 60
sudo cp /media/kubuntu/USB\ DISK/automation/configs/sources.list /etc/apt/
sudo add-apt-repository ppa:peek-developers/stable -y

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get -y install firefox
sudo apt-get -y install git
bash setup.git.sh
sudo bash -c 'echo "Asia/Yerevan" > /etc/timezone'
sudo dpkg-reconfigure keyboard-configuration
#sudo cp "/media/kubuntu/USB DISK/automation/configs/keyboard" "/etc/default/"
cd ~/Desktop && git clone https://gitlab.com/a.kolyan/tumo-helper-scripts.git
cd /tmp


mkdir /tmp/workingwith
#sudo apt-get -y chromium-browser
sudo apt-get -y install jq keepassx terminator fish curl htop kazam

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo chown -R $USER:$(id -gn $USER) /home/kubuntu/.config
sudo install npm
#sudo npm install -g yarn
sudo npm install -g nodemon
sudo ln -s "$(which nodejs)" /usr/bin/node

sudo apt-get -y install code # or code-insiders
cp -R  /media/kubuntu/USB\ DISK/automation/configs/Code/User/ /home/kubuntu/.config/Code/
cp -R  /media/kubuntu/USB\ DISK/automation/configs/kazam/ /home/kubuntu/.config/kazam/
cp -R  /media/kubuntu/USB\ DISK/automation/configs/keepassx/ /home/kubuntu/.config/
cp /media/kubuntu/USB\ DISK/automation/configs/user-places.xbel /home/kubuntu/.local/share/
cp /media/kubuntu/USB\ DISK/automation/configs/okularpartrc /home/kubuntu/.config/
cp -R "/media/kubuntu/USB DISK/automation/jsproject_template" ~/Desktop/

sudo apt-get -y install shutter
#sudo apt-get -y install gimp
sudo apt-get -y install peek
sudo apt-get -y install moc
sudo apt autoremove -y

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get -y install chromium-browser
alias google-chrome="chromium-browser"
alias tumo-helper-scripts="cd /home/kubuntu/Desktop/tumo-helper-scripts/"
alias usb="cd '/media/kubuntu/USB DISK/'"
sudo apt remove -y konsole

tar xvfJ  "/media/kubuntu/USB DISK/soft/tsetup.1.2.15.tar.xz" -C /home/kubuntu/

cd /home/kubuntu/Telegram/ && ./Telegram &


terminator --execute 'fish' & exit

