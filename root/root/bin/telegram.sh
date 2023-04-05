#!/bin/sh

MESSAGE="${1}"

if [ -z "${MESSAGE}" ]; then
  echo "error: no message specified."
  exit 1
fi

# Fill required vars below
TELEGRAM_BOT_TOKEN=""    # Bot token generated from botfather
TELEGRAM_CHAT_ID=""      # Private chat id / group chat id
TELEGRAM_PIC_MENTION=""  # Optional for add message mention

if [ ! -z "${TELEGRAM_PIC_MENTION}" ]; then
  MESSAGE="${TELEGRAM_PIC_MENTION} ${MESSAGE}"
fi

curl \
  -slL \
  -X POST \
  https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage \
  -d "chat_id=${TELEGRAM_CHAT_ID}&text=${MESSAGE}"

