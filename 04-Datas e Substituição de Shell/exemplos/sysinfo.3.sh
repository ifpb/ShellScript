#!/bin/bash


echo -e "---------------------------------------------------" >> logfile
date >> logfile

echo -e "Quem esta usando o sistema:" >> logfile
who >> logfile

echo -e "Informações sobre os discos:" >> logfile
df >> logfile
fdisk -l >> logfile

echo -e "Informações sobre a memória:" >> logfile
free >> logfile
