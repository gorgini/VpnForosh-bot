#!/bin/bash
sudo apt-get install wget
wget https://github.com/gorgini/VpnForosh-bot/archive/refs/heads/main.zip
sudo apt-get install unzip
unzip main.zip
sleep 2
sudo apt-get install python3-pip
pip3 install -r VpnForosh-bot/requirements.txt
echo "Edit config File"
sleep 2
nano VpnForosh-bot/config.py
echo "Now Run Bot in background"
sleep 2
(cd VpnForosh-bot-main && python3 main.py &)
(cd VpnForosh-bot-main && python3 update.py &)
echo "End"
exit
