#Just setting a few cron job to do after my pi restart

sudo systemctl edit --force --full <name-service>.service

#it opens a nano blank file and you fill with these information

[Unit]
Description= Description Service
After=network.target

[Service]
ExecStart=/usr/bin/python3.11 <absolute-path>/app.py
WorkingDirectory=<absolute-path>
StandardOutput=inherit
StandardError=inherit
User=pi

[Install]
WantedBy=multi-user.target

#Save and close nano file then type these commands

sudo systemctl enable <name-service>.service
sudo systemctl start <name-service>.service

