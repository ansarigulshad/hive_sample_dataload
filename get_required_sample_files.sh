#!/usr/bin/env bash


wget https://raw.githubusercontent.com/ansarigulshad/Datasets/master/fifa_19_players_data.csv
wget https://raw.githubusercontent.com/ansarigulshad/Datasets/master/cities.csv
wget https://raw.githubusercontent.com/ansarigulshad/Datasets/master/sample_07.csv
wget https://raw.githubusercontent.com/ansarigulshad/Datasets/master/sample_08.csv
wget https://raw.githubusercontent.com/ansarigulshad/Datasets/master/driver_data.zip
unzip driver_data.zip
sh data_generator.sh
