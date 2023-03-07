#!/bin/bash
sudo ip link set dev wlp3s0 down
sudo ip link set dev wlp3s0 promisc on
sudo macchanger -a wlp3s0
sudo ip link set dev wlp3s0 up

#sudo ifconfig wlp3s0 down
#sudo ifconfig wlp3s0 ether "dE:e2:92:42:62:82"
#sudo ifconfig wlp3s0 up



#Could not change MAC: interface up or insufficient permissions: Too many open files in system
#b8:ee:65:57:c5:8b
#curl https://api.myip.com
#sudo protonvpn d
#sudo ifconfig wlp3s0 down
#sleep 3
#sudo ~/bin/macchanger/macchanger -s wlp3s0
#sudo ~/bin/macchanger/macchanger -r wlp3s0
#sudo ~/bin/macchanger/macchanger -s wlp3s0
#sleep 3
#sudo ifconfig wlp3s0 up
#sleep 3
#sudo protonvpn c
#sleep 3
#curl https://api.myip.com
