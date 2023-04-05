## Multi WAN (mwan3) Telegram notification
Always stay up to date with your mwan3 status using Telegram

### Prerequisites
- luci-app-mwan3
- curl
- ca-certificates

### Installing
```shell
bash install.sh
```

### How to create Telegram bot
You can follow this article to create new Telegram bot: https://medium.com/geekculture/generate-telegram-token-for-bot-api-d26faf9bf064

### How to retrieve private chat id or group chat id
To retrieve group chat id, makes sure you have invited your bot to your group, for example we are using this bot
```
username  : my_awesome_openwrt_bot
bot token : 61102xxxxx:AAHnmbXKLisxejOBBVVxxxxxxxxxxxx
```
Send message to group and mention your bot, ex: `/my_id @my_awesome_openwrt_bot`<br>



### Configure notification
Configuration file are located on `/root/bin/telegram.sh`<br>
Example configuration:
```
TELEGRAM_BOT_TOKEN="61102xxxxx:AAHnmbXKLisxejOBBVVxxxxxxxxxxxx"
TELEGRAM_CHAT_ID="-9271xxxxx"
TELEGRAM_PIC_MENTION="@lutfailham"
```