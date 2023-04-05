## Multi WAN (mwan3) Telegram notification
Always stay up to date with your mwan3 status using Telegram

### Prerequisites
- luci-app-mwan3
- curl
- ca-certificates

### Installing
```shell
sh -c "$(curl -sLlo - https://raw.githubusercontent.com/lutfailham96/mwan3-telegram-notification/main/install.sh)"
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
Get update your bot by visiting url like this
```json
{
    "ok": true,
    "result": [
        {
            ...
            "message": {
                "from": {
                    ...
                    "username": "lutfailham"
                },
                "chat": {
                    "id": -9271xxxxx, // This is group chat id
                    "type": "group"
                    ...
                },
                "text": "/my_id @my_awesome_openwrt_bot",
                ...
            }
        }
    ]
}
```
as we can see, retrieved group chat id is `-9271xxxxx`


### Configure notification
Configuration file are located on `/root/bin/telegram.sh`, you edit the file using `nano` or `vi`<br>
Example configuration:
```bash
TELEGRAM_BOT_TOKEN="61102xxxxx:AAHnmbXKLisxejOBBVVxxxxxxxxxxxx"
TELEGRAM_CHAT_ID="-9271xxxxx"
TELEGRAM_PIC_MENTION="@lutfailham"      # This field is optional, for user mention purpose only
```