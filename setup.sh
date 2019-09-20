#xrandr --output eDP --mode 1920x1080 --rate 60
#sudo cp /media/kubuntu/USB\ DISK/automation/configs/sources.list /etc/apt/
sudo add-apt-repository ppa:peek-developers/stable -y

rm -r ~/Music
ln -s /media/kubuntu/9252-A74B/music/ ~/Music
ln -s /media/kubuntu/9252-A74B/ ~/DataDisk
ln -s /media/kubuntu/USB\ DISK/ ~/USB
sudo apt-get -y install jq keepassx terminator fish curl htop kazam

sudo apt install curl
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get -y --allow-unauthenticated install code # or code-insiders


sudo apt-get -y install firefox
sudo apt-get -y install git
bash setup.git.sh
sudo bash -c 'echo "Asia/Yerevan" > /etc/timezone'
sudo dpkg-reconfigure keyboard-configuration
#sudo cp "/media/kubuntu/USB DISK/automation/configs/keyboard" "/etc/default/"
cd ~/Desktop && git clone https://gitlab.com/a.kolyan/tumo-helper-scripts.git
#git clone https://github.com/tumofreduclips/iframes
cd /tmp


mkdir /tmp/workingwith
#sudo apt-get -y chromium-browser

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo chown -R $USER:$(id -gn $USER) /home/kubuntu/.config
sudo install npm
sudo npm install -g nodemon
#sudo ln -s "$(which nodejs)" /usr/bin/node

cp -R  /media/kubuntu/USB\ DISK/automation/configs/Code/User/ /home/kubuntu/.config/Code/
cp -R  /media/kubuntu/USB\ DISK/automation/configs/kazam/ /home/kubuntu/.config/kazam/
cp -R  /media/kubuntu/USB\ DISK/automation/configs/keepassx/ /home/kubuntu/.config/
cp -R  /media/kubuntu/USB\ DISK/automation/configs/terminator/ /home/kubuntu/.config/
cp -R /media/kubuntu/USB\ DISK/automation/configs/user-places.xbel /home/kubuntu/.local/share/
cp -R /media/kubuntu/USB\ DISK/automation/configs/okularpartrc /home/kubuntu/.config/
cp -R "/media/kubuntu/USB DISK/automation/jsproject_template" ~/Desktop/


# Install the latest version of Diigo Web Collector extension for Mozilla Firefox
# Create a temporary folder
mkdir extensions_temp
cd ~/extensions_temp
# Get the version of the latest diigo add-on for firefox
diigoVersion=$(wget -q -O - https://addons.mozilla.org/en-US/firefox/addon/diigo-web-collector/ | xmllint --html --xpath '(//dd[@class = "AddonMoreInfo-version"])[1]' - 2>/dev/null | tr -d '<dd class="AddonMoreInfo-version">/-')
diigoFileAddr="https://addons.mozilla.org/firefox/downloads/file/763598/diigo_web_collector_capture_and_annotate-$diigoVersion-an+fx.xpi"
wget $diigoFileAddr   # Download diigo's latest version
# Get the manifest.json from diigo extension and extract the addon identifier
unzip diigo_web_collector_capture_and_annotate-$diigoVersion-an+fx.xpi manifest.json  #unzip manifest.json from .xpi
diigoID=$(grep "\"id\":" manifest.json | cut -d':' -f2 | cut -d'"' -f2)   # Extract the addon identifier string from manifest.json
mv diigo_web_collector_capture_and_annotate-$diigoVersion-an+fx.xpi $diigoID.xpi # rename diigo addon to apropriate name
mv $diigoID.xpi /usr/lib/firefox-addons/extensions/   # Move diigo addon to Firefox' extension directory
rm -r extensions_temp   # Clean up after yourself


sudo apt-get -y install shutter
#sudo apt-get -y install gimp
sudo apt-get -y install peek
sudo apt-get -y install moc moc-ffmpeg-plugin
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

sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl
hash -r

terminator --execute 'fish' &


#sudo dpkg -i /media/kubuntu/USB\ DISK/soft/slack-desktop-3.2.1-amd64.deb
sudo apt-get install -f

exit
