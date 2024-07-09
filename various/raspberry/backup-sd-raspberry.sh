sudo dd bs=4M if=/dev/mmcblk0 of=/dev/sda

#backup diretto via ssh sulla macchina locale
ssh pi@xx.x.x.xx "sudo dd if=/dev/mmcblk0 bs=1M status=progress | gzip -" | dd of=~/Desktop/pibackup.gz
