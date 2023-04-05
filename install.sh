#!/bin/sh

echo -e "Installing ..."
curl -slLo /root/bin/telegram.sh "https://raw.githubusercontent.com/lutfailham96/mwan3-telegram-notification/main/root/root/bin/telegram.sh"
chmod +x /root/bin/telegram.sh
curl -slLo /etc/mwan3.user "https://raw.githubusercontent.com/lutfailham96/mwan3-telegram-notification/main/root/etc/mwan3.user"
chmod +x /etc/mwan3.user
echo -e "MWAN Notificator installed"
