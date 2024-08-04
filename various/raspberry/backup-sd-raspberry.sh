sudo dd bs=4M if=/dev/mmcblk0 of=/dev/sda

#backup diretto via ssh sulla macchina locale (LINUX)
ssh pi@xx.x.x.x "sudo dd if=/dev/mmcblk0 bs=4M status=progress | gzip -" | dd of=~/Desktop/pibackup.gz
#(WINDOWS)
ssh pi@xx.x.x.x "sudo dd if=/dev/mmcblk0 bs=4M status=progress | gzip -" | Out-File -FilePath C:\Users\<YourUsername>\Desktop\pibackup.gz -Encoding Byte

#HOW TO RESTORE BACKUP COPIED BY SSH

#LINUX
#extract gz
gunzip ~/Desktop/pibackup.gz
#write image extracted to sd
sudo dd if=~/Desktop/pibackup of=/dev/sdX bs=4M status=progress
#verify and sync
sync

#WINDOWS
#Extract .gz
#Write image to sd
#Use balenaEtcher
#Click flash on balenaEtcher
