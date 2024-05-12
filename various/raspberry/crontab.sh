#Just setting a few cron job to do after my pi restart
@reboot sleep 60 && python3 /home/pi/Documents/programming/python/Robbot/app.py 2>&1 > /dev/tty1 & echo 'Robbot' $! >> /home/pi/Documents/tg_app_pid.txt
@reboot sleep 60 && python3 /home/pi/Documents/programming/python/my-tg-app/app.py 2>&1 > /dev/tty1 & echo 'my-tg-app' $! >> /home/pi/Documents/tg_app_pid.txt
@reboot sleep 60 && python3 /home/pi/Documents/programming/python/TelegramChatInsights/app.py 2>&1 > /dev/tty1 & echo 'Tg Insights' $! >> /home/pi/Documents/tg_app_pid.txt
