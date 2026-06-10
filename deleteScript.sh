#!/bin/bash

# Die Cronjobs gelöscht
sudo crontab -r -u ali
sudo crontab -r -u mostafa

# Das Verzeichnis temp gelöscht
sudo rm -rf /home/ali/temp

# Die Benutzer gelöscht
sudo userdel -r ali
sudo userdel -r mostafa

# Die Gruppen gelöscht
sudo groupdel verwalting
sudo groupdel music
