#calcolare spazio occupato dai file di propeirtà di un certo utente
sudo find /home -user user -type f -exec du -k {} \; | awk '{s=s+} END {print Total used: ,s}'
