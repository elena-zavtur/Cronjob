#!/bin/bash
 
#  Die Benutzer erstellt  
sudo useradd -m mostafa
sudo useradd -m ali

# Die Gruppen erstellt
sudo groupadd verwaltung
sudo groupadd music

# Die Benutzer in die Gruppen hinzugefügt
sudo usermod -aG verwaltung ali
sudo usermod -aG music mostafa

# Das Verzeichnis temp erstellt
sudo mkdir -p /home/ali/temp

# Die Berechtigungen für das Verzeichnis gesetzt
sudo chown ali:ali /home/ali/temp

# Die Cronjob für ali erstellt
echo "0 0 * * 0 rm -rf /home/ali/temp/*" > /home/ali/tempJob
crontab -u ali /home/ali/tempJob

# Die Cronjob für mostafa erstellt
echo "*/15 * * * * date >> /home/mostafa/.online_check" > /home/mostafa/onlineJob
crontab -u mostafa /home/mostafa/onlineJob
