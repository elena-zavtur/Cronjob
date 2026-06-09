#!/bin/bash
sudo useradd -m mostafa
sudo useradd -m ali

sudo groupadd verwaltung
sudo groupadd music

sudo usermod -aG verwaltung ali
sudo usermod -aG music mostafa

sudo mkdir -p /home/ali/temp
sudo chown ali:ali /home/ali/temp
