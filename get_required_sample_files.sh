#!/usr/bin/env bash


mkdir -p /var/tmp/hivesampledata

wget -nv https://raw.githubusercontent.com/ansarigulshad/Datasets/master/fifa_19_players_data.csv -O /var/tmp/hivesampledata/fifa_19_players_data.csv
wget -nv https://raw.githubusercontent.com/ansarigulshad/Datasets/master/cities.csv  -O /var/tmp/hivesampledata/cities.csv
wget -nv https://raw.githubusercontent.com/ansarigulshad/Datasets/master/sample_07.csv  -O /var/tmp/hivesampledata/sample_07.csv
wget -nv https://raw.githubusercontent.com/ansarigulshad/Datasets/master/sample_08.csv  -O /var/tmp/hivesampledata/sample_08.csv
wget -nv https://raw.githubusercontent.com/ansarigulshad/Datasets/master/driver_data.zip  -O /var/tmp/hivesampledata/driver_data.zip

unzip /var/tmp/hivesampledata/driver_data.zip -d /var/tmp/hivesampledata/

