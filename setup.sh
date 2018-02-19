sudo apt-get update
sudo apt-get -y install firefox
sudo apt-get -y install git
bash setup.git.sh
sudo bash -c 'echo "Asia/Yerevan" > /etc/timezone'
sudo dpkg-reconfigure keyboard-configuration
cp configs/okularpartrc /home/kubuntu/.config/
cd ~/Desktop && git clone https://gitlab.com/a.kolyan/tumo-helper-scripts.git
cd /tmp

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
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
cp -R  /media/kubuntu/USB\ DISK/automation/configs/Code/User/ /home/kubuntu/.config/Code/
cp -R  /media/kubuntu/USB\ DISK/automation/configs/keepassx/ /home/kubuntu/.config/
cp configs/user-places.xbel /home/kubuntu/.local/share/

# Install Diigo Web Collector extension for Mozilla Firefox
# Create a temporary folder
mkdir extensions_temp
cd ~/extensions_temp
# Get the version of the latest diigo add-on for firefox
diigoVersion=$(wget -q -O - https://addons.mozilla.org/en-US/firefox/addon/diigo-web-collector/ | xmllint --html --xpath '(//dd[@class = "AddonMoreInfo-version"])[1]' - 2>/dev/null | tr -d '<dd class="AddonMoreInfo-version">/-')
diigoFileAddr="https://addons.mozilla.org/firefox/downloads/file/763598/diigo_web_collector_capture_and_annotate-$diigoVersion-an+fx.xpi"
wget $diigoFileAddr
# Get the manifest.json from diigo extension and extract the addon identifier
unzip diigo_web_collector_capture_and_annotate-$diigoVersion-an+fx.xpi manifest.json
diigoID=$(grep "\"id\":" manifest.json | cut -d':' -f2 | cut -d'"' -f2)




sudo apt-get -y install shutter
sudo apt-get -y install gimp
sudo apt autoremove -y
terminator --execute 'fish' & exit
