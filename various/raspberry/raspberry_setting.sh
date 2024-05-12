#edit /etc/rsyslog.conf
#after section ############ RULES ##########
#add the following line
#*.* -
#then restart rsyslog deamon:
sudo service rsyslog restart
#####################################################################################################
#disable swap
sudo dphys-swapfile  swapoff
sudo dphys-swapfile uninstall
sudo update-rc.d dphys-swapfile remove
#if sure to not using in the near future 
sudo apt purge  dphys-swapfile -y
